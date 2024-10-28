//
//  databaseTest.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 22/10/2024.
//

import SwiftUI

struct databaseTest: View {
    var body: some View {
        VStack{
            Button("Run"){
                let db = Database()
                db.connectAndQuery()
//                db.addCustomer(firstname: "Hak", lastname: "Kimheng", phonenumber: "09865543", dob: "12.23.45", password: "heng123")
                db.showCustomers()
            }
        }
    }
}

#Preview {
    databaseTest()
}
