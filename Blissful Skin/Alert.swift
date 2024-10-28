//
//  AddtoCart.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 18/10/2024.
//

import SwiftUI

struct Alert: View {
    @Binding var show: Bool
    @State var colors: Color
    @State var Heading : String
    @State var Title : String
    var body: some View {
        
        if show {
            ZStack{
                VStack{
                    ZStack {
                        Ellipse()
                            .frame(width: 70,height: 70)
                            .foregroundStyle(colors.opacity(0.4))
                        Ellipse()
                            .frame(width: 60,height: 60)
                            .foregroundStyle(colors.opacity(0.4))
                        Image(systemName: "checkmark.circle")
                            .foregroundStyle(.white)
                            .font(.system(size: 50))
                    }
                    .padding(.bottom,10)
                    .padding(.top,20)
                    Text("\(Heading)")
                        .bold()
                        .foregroundStyle(colors)
                        .font(.system(size: 30))
                    Text("\(Title)")
                        .foregroundStyle(.gray)
                        .font(.system(size: 12))
                    Spacer()
                    Button{
                        withAnimation{
                            show = false
                        }
                    }label: {
                        ZStack{
                            Text("Okey")
                                .bold()
                                .foregroundStyle(.white)
                        }
                        .frame(width: 200,height: 50)
                        .background(colors)
                        .cornerRadius(20)
                        .padding(.bottom,15)
                    }
                }
                .frame(width: 260,height: 240)
                .background(.white)
                .cornerRadius(30)
                .overlay {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.MainColor,lineWidth: 2)
                }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.black.opacity(0.2))
        }
        
    }
}
#Preview {
    Alert(show: .constant(true), colors: .green, Heading: "Succuss", Title: "gijgkdfg")
}
