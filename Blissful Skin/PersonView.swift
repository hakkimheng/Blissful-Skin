//
//  PersonView.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 16/10/2024.
//

import SwiftUI

struct PersonView: View {
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var Click: String
    @Binding var phonenumber: String
    @Binding var dob : Date
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
                            VStack(alignment: .leading) {
                                Text("\(firstname)")
                                    .font(.system(size: 28))
                                    .bold()
                                    .foregroundStyle(Color.black)
                                Text("\(lastname)")
                                    .font(.system(size: 28))
                                    .fontWeight(.medium)
                                    .foregroundStyle(Color.black)
                            }
                            .padding(.leading,10)
                        }
                        .frame(width: 300,height: 140,alignment: .leading)
                        .padding(.leading,10)
                    }
                    .frame(width: 300,height: 180,alignment: .leading)
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
                            
                            Button{
                                withAnimation{
                                    Click = "account"
                                }
                                }label: {
                                    HStack{
                                        Image(systemName: "person.crop.circle.badge.clock.fill")
                                            .font(.system(size: 20))
                                            .foregroundStyle(.gray)
                                            .padding(.top,2)
                                        Text("Account Information")
                                            .font(.system(size: 17))
                                            .bold()
                                            .foregroundStyle(.gray)
                                        Spacer()
                                        Image(systemName: "chevron.right.circle")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 22))
                                    }
                                    .padding()
                                    .frame(width: 280,height: 60)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    
                                }
                                .padding(.bottom,5)
                                .padding(.top,40)
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                            .font(.system(size: 20))
                                            .foregroundStyle(.gray)
                                            .padding(.bottom,6)
                                        Text("Password")
                                            .font(.system(size: 17))
                                            .bold()
                                            .foregroundStyle(.gray)
                                        Spacer()
                                        Image(systemName: "chevron.right.circle")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 22))
                                    }
                                    .padding()
                                    .frame(width: 280,height: 60)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    
                                }
                                .padding(.bottom,5)
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Image(systemName: "heart")
                                            .font(.system(size: 20))
                                            .foregroundStyle(.gray)
                                            .padding(.top,2)
                                        Text("Favorite")
                                            .font(.system(size: 17))
                                            .bold()
                                            .foregroundStyle(.gray)
                                        Spacer()
                                        Image(systemName: "chevron.right.circle")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 22))
                                    }
                                    .padding()
                                    .frame(width: 280,height: 60)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    
                                }
                                .padding(.bottom,5)
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                                            .font(.system(size: 20))
                                            .foregroundStyle(.gray)
                                            .padding(.top,2)
                                        Text("Prochase History")
                                            .font(.system(size: 17))
                                            .bold()
                                            .foregroundStyle(.gray)
                                        Spacer()
                                        Image(systemName: "chevron.right.circle")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 22))
                                    }
                                    .padding()
                                    .frame(width: 280,height: 60)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    
                                }
                                .padding(.bottom,5)
                                Button{
                                    withAnimation{
                                        Click = "logout"
                                        firstname = "User"
                                        lastname = "name"
                                        phonenumber = ""
                                    }
                                }label: {
                                    HStack{
                                        Image(systemName: "figure.walk.motion")
                                            .font(.system(size: 20))
                                            .foregroundStyle(.white)
                                            .padding(.top,2)
                                        Text("Log out")
                                            .font(.system(size: 17))
                                            .bold()
                                            .foregroundStyle(.white)
                                        Spacer()
                                            .frame(width: 10)
                                    }
                                    .padding()
                                    .frame(width: 280,height: 60)
                                    .background(Color.MainColor)
                                    .cornerRadius(20)
                                    
                                }
                            }
                        }
                        .frame(width: 330,height: 450,alignment: .leading)
                        .foregroundStyle(Color.white.opacity(0.6))
                        
                    }
                    
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color.MainColor)
        }
    }
