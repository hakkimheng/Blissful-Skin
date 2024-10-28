//
//  Account.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 18/10/2024.
//

import SwiftUI

struct Account: View {
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var phonenumber: String
    @Binding var dob: Date
    @Binding var Click: String
    var formattedDOB: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long // This will give you "26 October 2003"
        return formatter.string(from: dob)
    }
    var body: some View {
        ZStack{
            VStack{
                Text("Setting")
                    .bold()
                    .font(.system(size: 25))
                    .padding(.bottom,30)
                HStack{
                    ZStack{
                            RoundedRectangle(cornerRadius: 0,style: .continuous)
                                .cornerRadius(30, corners: .bottomRight)
                                .cornerRadius(30, corners: .topRight)
                                .foregroundStyle(Color.white)
                            HStack {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 120,height: 120)
                            }
                            .frame(width: 300,height: 140,alignment: .center)
                            .padding(.leading,50)
                    }
                    .frame(width: 330,height: 180,alignment: .leading)
                    Spacer()
                }
                HStack{
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 0,style: .continuous)
                            .cornerRadius(40, corners: .topLeft)
                            .cornerRadius(40, corners: .bottomLeft)
                            .padding(.top,50)
                        VStack{
                            HStack {
                                Image(systemName: "person.crop.circle.badge.clock.fill")
                                Text("Account Infomation")
                            }
                            .foregroundStyle(.black)
                            .font(.system(size: 22))
                            .bold()
                            .padding(.bottom,10)
                            .padding(.top,50)
                            VStack {
                                HStack {
                                    Text("Name")
                                        .foregroundStyle(.gray)
                                        .padding(.leading,30)
                                    Spacer()
                                }
                                .padding(.bottom,-4)
                                HStack{
                                    Text("\(firstname) \(lastname)")
                                        .bold()
                                        .foregroundStyle(.gray)
                                    Spacer()
                                    
                                }
                                .padding(.leading,20)
                                .frame(width: 280,height: 50)
                                .background(.white)
                                .cornerRadius(20)
                            }
                            .padding(.bottom,2)
                            VStack {
                                HStack {
                                    Text("phone number")
                                        .foregroundStyle(.gray)
                                        .padding(.leading,30)
                                    Spacer()
                                }
                                .padding(.bottom,-4)
                                HStack{
                                    Text("\(phonenumber)")
                                        .bold()
                                        .foregroundStyle(.gray)
                                    Spacer()
                                    
                                }
                                .padding(.leading,20)
                                .frame(width: 280,height: 50)
                                .background(.white)
                                .cornerRadius(20)
                            }
                            VStack {
                                HStack {
                                    Text("Date of Birth")
                                        .foregroundStyle(.gray)
                                        .padding(.leading,30)
                                    Spacer()
                                }
                                .padding(.bottom,-4)
                                HStack{
                                    Text("\(formattedDOB)")
                                        .bold()
                                        .foregroundStyle(.gray)
                                    Spacer()
                                    
                                }
                                .padding(.leading,20)
                                .frame(width: 280,height: 50)
                                .background(.white)
                                .cornerRadius(20)
                            }
                            .padding(.bottom,10)
                            Button{
                                withAnimation{
                                    Click = "edit"
                                }
                            }label: {
                                HStack{
                                    Image(systemName: "square.and.pencil.circle.fill")
                                        .font(.system(size: 25))
                                        .foregroundStyle(.white)
                                        .padding(.top,2)
                                    Text("Edit")
                                        .font(.system(size: 17))
                                        .bold()
                                        .foregroundStyle(.white)
                                    Spacer()
                                        .frame(width: 10)
                                }
                                .padding()
                                .frame(width: 280,height: 50)
                                .background(Color.MainColor)
                                .cornerRadius(20)
                                
                            }
                        }
                    }
                    .frame(width: 330,height: 490,alignment: .leading)
                    .foregroundStyle(Color.white.opacity(0.6))
                    
                }
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.MainColor)
    }
}

