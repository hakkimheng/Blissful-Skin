//
//  FirstPage.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 15/10/2024.
//

import SwiftUI

struct FirstPage: View {
    @Binding var click: String
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Text("Welcome")
                    .bold()
                    .font(.system(size: 50))
                    .foregroundStyle(.yellow.opacity(0.6))
                    .padding(.top,40)
                Text("To Blissful")
                    .font(.system(size: 30))
                    .foregroundStyle(.yellow.opacity(0.6))
                    .bold()
                Image("first")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.top,20)
                    .ignoresSafeArea()
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            
            VStack{
                Button{
                    withAnimation{
                        click = "page"
                    }
                    
                }label: {
                    HStack{
                        Text("Sign Up")
                            .foregroundStyle(.white)
                            .bold()
                    }
                    .frame(width: 300,height: 50)
                    .background(Color.MainColor)
                    .cornerRadius(20)
                    
                }
                .padding(.bottom,10)
                Button{
                    withAnimation{
                        click = "login"
                    }
                }label: {
                    HStack {
                        HStack{
                            Text("log in")
                                .foregroundStyle(Color.MainColor)
                                .bold()
                        }
                        .frame(width: 300,height: 50)
                        .background(BlurView(style: .systemThinMaterial)
                        )
                        .cornerRadius(20)
                    }
                    .shadow(radius: 1,x: 0.5,y:1)
                    .opacity(0.9)
                }
                Button{
                    withAnimation{
                        click = "skip"
                    }
                }label: {
                    Text("Skip")
                        .underline()
                        .padding(.top,20)
                }
            }
            .frame(maxWidth: .infinity,maxHeight: 220,alignment: .center)
            .background(.white.opacity(0.5))
            .cornerRadius(40)
            .padding()

        }
        .background(Color.MainColor)
    }
}

#Preview {
    FirstPage(click: .constant("page"))
}
