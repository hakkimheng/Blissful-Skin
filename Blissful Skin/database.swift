//
//  database.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 22/10/2024.
//
import PostgresClientKit

class Database {
    private var connection: PostgresClientKit.Connection?

    private func createConnection() throws {
        var configuration = PostgresClientKit.ConnectionConfiguration()
        configuration.host = "localhost"
        configuration.database = "BlissfulSkin"
        configuration.user = "postgres"
        configuration.credential = .scramSHA256(password: "")
        configuration.ssl = false
        
        connection = try PostgresClientKit.Connection(configuration: configuration)
    }

    private func closeConnection() {
        connection?.close()
        connection = nil
    }

    func connectAndQuery() {
        do {
            try createConnection()
            defer { closeConnection() }
            
            let statement = try connection!.prepareStatement(text: "SELECT * FROM customers")
            defer { statement.close() }
            
            let cursor = try statement.execute()
            // Process the cursor as needed...
        } catch {
            print("Error: \(error)")
        }
    }
    func addCustomer(firstname: String, lastname: String,phonenumber: String, dob: String,password: String) {
        do {
            try createConnection()
            defer { closeConnection() }
            
            let statement = try connection!.prepareStatement(text: "INSERT INTO customers (firstname, lastname,phonenumber,dob,password) VALUES ($1, $2, $3, $4, $5)")
            defer { statement.close() }
            
            // Create an array of PostgresValue from strings
            let parameters: [PostgresClientKit.PostgresValue] = [
                PostgresClientKit.PostgresValue(firstname),
                PostgresClientKit.PostgresValue(lastname),
                PostgresClientKit.PostgresValue(phonenumber),
                PostgresClientKit.PostgresValue(dob),
                PostgresClientKit.PostgresValue(password)
            ]
            try statement.execute(parameterValues: parameters)
            print("Customer added successfully.")
        } catch {
            print("Error adding customer: \(error)")
        }
    }
    func showCustomers() {
        do {
            try createConnection()
            defer { closeConnection() }

            let statement = try connection!.prepareStatement(text: "SELECT * FROM customers")
            defer { statement.close() }

            let cursor = try statement.execute()

            // Iterate through the cursor to fetch and display customer records
            for row in cursor {
                let columns = try row.get().columns
                print("Row: \(columns)")
                            }
        } catch {
            print("Error fetching customers: \(error)")
        }
    }
    
    func getCustomers(phonenumber: String, password: String) -> [[String: Any]]? {
        do {
            try createConnection()
            defer { closeConnection() }

            let statement = try connection!.prepareStatement(
                text: "SELECT firstname, lastname, phonenumber, dob, password FROM customers WHERE phonenumber = $1 AND password = $2"
            )
            defer { statement.close() }

            let cursor = try statement.execute(parameterValues: [phonenumber, password])
            var result: [[String: Any]] = []

            while let row = cursor.next() {
                let columns = try row.get().columns
                
                // Debugging prints for raw column values
                print("Raw columns: \(columns)")

                // Accessing values and ensuring correct type conversion
                let firstname = columns[0]  // Assuming it's a String
                let lastname = columns[1]   // Assuming it's a String
                let phonenumber = columns[2]// Assuming it's a String
                let dob = columns[3]        // Assuming it's a Date
                let password = columns[4]   // Assuming it's a String

                result.append([
                    "firstname": try firstname.string().description   ,  // Use .string for String
                    "lastname": try lastname.string().description   ,    // Use .string for String
                    "phonenumber":  phonenumber, // Use .string for String
                    "dob": try dob.date().description,    // Use .date for Date
                    "password": try password.string().description       // Use .string for String
                ])
            }

            return result.isEmpty ? nil : result // Return nil if no results found
        } catch {
            print("Error fetching customers: \(error)")
            return nil
        }
    }
    
}
