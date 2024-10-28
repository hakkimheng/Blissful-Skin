//
//  SignUp.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 15/10/2024.
//

import SwiftUI

struct UserInfo: View {
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var click: String
    @Binding var gender: String
    @Binding var dob: Date
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
                        
                    Button{
                        click = "skip"
                    }label: {
                        Text("Skip")
                            .foregroundStyle(.blue)
                            .underline()
                    }
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topTrailing)
            .padding(.trailing,30)
            
            VStack{
                Text("User info")
                    .bold()
                    .font(.system(size: 25))
                    .padding(.vertical,5)
                VStack{
                    TextField("Enter first-name ", text: $firstname)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal,20)
                .padding(.vertical)
                VStack{
                    TextField("Enter last-name ", text: $lastname)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                
                .padding(.horizontal,20)
                .padding(.vertical)
                
                VStack {
                    DatePicker("Date of birth", selection: $dob, displayedComponents: .date)
                        .foregroundStyle(.gray)
                        .padding(.horizontal,20)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal,20)
                .padding(.vertical)
                Button{
                    click = "password"
                }label: {
                    HStack{
                        Text("Next")
                            .foregroundStyle(.white)
                            .bold()
                        Image(systemName: "arrow.right.circle.fill")
                            .foregroundStyle(.white)
                        
                    }
                    .frame(width: 300,height: 50)
                    .background(Color.MainColor)
                    .cornerRadius(20)
                }
    
                
                
            }
            .frame(width: 340,height: 450)
            .background(.white.opacity(0.95))
            .cornerRadius(40)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)

        }
    }
}

func backgroundColor(for gender: String) -> Color {
    return gender == "Male" ? Color.black : Color.white
}

struct Password: View {
    @Binding var password: String
    @Binding var click: String
    @Binding var show : Bool
    @Binding var repassword: String

    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button{
                        click = "page"
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
                Text("Password")
                    .bold()
                    .font(.system(size: 25))
                    .padding(.vertical,5)
                Image(systemName: "key.viewfinder")
                    .font(.system(size: 100))
                    .foregroundColor(.green)
                VStack{
                    SecureField("Enter password", text: $password)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal,20)
                .padding(.vertical)
                VStack{
                    
                    SecureField("Enter repassword ", text: $repassword)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                
                .padding(.horizontal,20)
                .padding(.vertical)
                Button{
                    if(password != repassword){
                        show = true
                    }
                    else{
                        click = "phonenumber"
                    }
                }label: {
                    HStack{
                        Text("Next")
                            .foregroundStyle(.white)
                            .bold()
                        Image(systemName: "arrow.right.circle.fill")
                            .foregroundStyle(.white)
                        
                    }
                    .frame(width: 300,height: 50)
                    .background(Color.MainColor)
                    .cornerRadius(20)
                }
    
                
                
            }
            .frame(width: 340,height: 450)
            .background(.white.opacity(0.95))
            .cornerRadius(40)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)

        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .overlay {
            Alert(show: $show, colors: .red, Heading: "Try Again", Title: "Enter correct password!")
        }
    }
}

struct Phonenumber: View {
    @Binding var phonenumber: String
    @Binding var click: String
    @Binding var show : Bool
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var password: String
    @Binding var dob: Date
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button{
                        click = "page"
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
                Text("Password")
                    .bold()
                    .font(.system(size: 25))
                    .padding(.vertical,5)
                Image(systemName: "phone.bubble")
                    .font(.system(size: 100))
                    .foregroundColor(.green)
                VStack{
                    TextField("Phone number", text: $phonenumber)
                        .keyboardType(.numberPad)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.horizontal,15)
                    Rectangle()
                        .frame(width: 280,height: 2)
                        .foregroundStyle(.gray)
                }
                .padding(.horizontal,20)
                .padding(.vertical)
                Button{
                    if(phonenumber.count < 9){
                        show = true
                    }
                    else {
                        let db = Database()
                        let dobs = formatDate(dob)
                        db.addCustomer(firstname: firstname, lastname: lastname, phonenumber: phonenumber, dob: dobs, password: password)
                        click = "skip"
                        
                    }
                    
                }label: {
                    HStack{
                        Text("Next")
                            .foregroundStyle(.white)
                            .bold()
                        Image(systemName: "arrow.right.circle.fill")
                            .foregroundStyle(.white)
                        
                    }
                    .frame(width: 300,height: 50)
                    .background(Color.MainColor)
                    .cornerRadius(20)
                }
    
                
                
            }
            .frame(width: 340,height: 350)
            .background(.white.opacity(0.95))
            .cornerRadius(40)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)

        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .overlay {
            Alert(show: $show, colors: .red, Heading: "Try Again", Title: "Please input phone number")
        }
    }
}
