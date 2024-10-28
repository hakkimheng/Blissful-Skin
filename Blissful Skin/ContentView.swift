//
//  ContentView.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 14/10/2024.
//

import SwiftUI

struct ContentView: View {
    @State var firstname: String = "User"
    @State var lastname: String = "Name"
    @State var click: String = ""
    @State var title: String = "Poly-Vitamin Serum"
    @State var price: String = "12.55"
    @State var show: Bool = false
    @State var selectGender: String = ""
    @State var dob: Date = Date()
    @State var password : String = ""
    @State var repassword : String = ""
    @State var phonenumber : String = ""
    @State var next : Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                switch click{
                case "page":
                    UserInfo(firstname: $firstname, lastname: $lastname,click: $click,gender: $selectGender,dob: $dob)
                case "back":
                        FirstPage(click: $click)
                        .animation(.easeInOut, value: 2)
                case "account" :
                    Account(firstname: $firstname, lastname: $lastname, phonenumber: $phonenumber,dob: $dob,Click: $click)
                        .animation(.easeInOut, value: 1)
                case "password":
                    Password(password: $password, click: $click, show: $show, repassword: $repassword)
                case "skip" :
                    HomeScreenView(firstname: $firstname, lastname: $lastname, Click: $click, show: $show, phonenumber: $phonenumber, dob: $dob)
                case "item1":
                    
                    ItemCart(title: $title, price: $price, Click: $click,show: $show)
                        .animation(.easeInOut, value: 20)
                case "login":
                    LoginView(click: $click, firstname: $firstname, lastname: $lastname, password: $password, dob: $dob, phone: $phonenumber, show: $show)
                case "logout":
                    FirstPage(click: $click)
                case "phonenumber":
                    Phonenumber(phonenumber: $phonenumber, click: $click, show: $show, firstname: $firstname, lastname: $lastname, password: $password, dob: $dob)
                default :
                    FirstPage(click: $click)
                }
                
                
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)

    }
    
}

#Preview {
    ContentView()
}
