//
//  LoginView.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 16/10/2024.
//

import SwiftUI

struct LoginView: View {
    @Binding var click: String
    @State var phonenumber: String = ""
    @State var Password: String = ""
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var password: String
    @Binding var dob: Date
    @Binding var phone: String
    @State var isInputValid : Bool = true
    @Binding var show : Bool
    private let database = Database()
    var body: some View {
        
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button{
                        click = "back"
                    }label: {
                        Image(systemName: "arrow.left.circle")
                            .font(.system(size: 30))
                            .foregroundColor(.gray)
                            .padding(.leading,25)
                    }
                    Spacer()
                        
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topTrailing)
            .padding(.trailing,30)
            
            VStack{
                Text("Log in")
                    .bold()
                    .font(.system(size: 25))
                    .padding(.vertical,5)
                VStack{
                    TextField("Enter phonenumber ", text: $phonenumber)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                        .keyboardType(.numberPad)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal,20)
                .padding(.vertical)
                
                VStack{
                    SecureField("Enter password ", text: $Password)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal,20)
                .padding(.vertical)
                Button{
                    loadCustomerData(phonenumber1: phonenumber, password1: Password)
                    if isInputValid{
                        click = "skip"
                    }
                    else{
                        show = true
                    }
   
                }label: {
                    HStack{
                        Text("Log in")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    .frame(width: 300,height: 50)
                    .background(Color.MainColor)
                    .cornerRadius(20)
                }
    
                
                
            }
            .frame(width: 340,height: 300)
            .background(.white.opacity(0.95))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)

        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .overlay{
            Alert(show: $show, colors: .red, Heading: "Try Again", Title: "you phonenumber or password incorrect!")
        }
    }
    
    private func loadCustomerData(phonenumber1: String, password1: String) {
        // Fetch customers matching the phone number and password
        if let customers = database.getCustomers(phonenumber: phonenumber1, password: password1) {
            // Check if there's at least one customer
            if let customer = customers.first {
                // Trim spaces and attempt to cast to expected types
                firstname = (customer["firstname"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
                lastname = (customer["lastname"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
                phone = (customer["phonenumber"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""
                password = (customer["password"] as? String)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? ""

                // Handle the date of birth conversion
                if let dobString = customer["dob"] as? String,
                   let date = dateFormatter.date(from: dobString) {
                    dob = date
                } else {
                    print("Failed to fetch or convert dob")
                }
                isInputValid = true 
            } else {
                isInputValid = false
            }
        }else {
            isInputValid = false
        }
    }
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    

}

