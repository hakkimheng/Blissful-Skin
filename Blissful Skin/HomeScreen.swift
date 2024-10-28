//
//  HomeScreen.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 14/10/2024.
//

import SwiftUI

struct HomeScreen: View {
    @State private var SearchText: String = ""
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var Click: String
    @State var price: String = "12.50"
    @Binding var show: Bool
    @Binding var SelectedTab : String
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    HStack {
                        Button{
                            SelectedTab = "person"
                        }
                        label: {
                            HStack {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                VStack(alignment: .leading){
                                    Text("\(firstname) \(lastname)")
                                        .bold()
                                        .font(.system(size: 15))
                                    Text("Have a nice day!")
                                        .fontWeight(.medium)
                                        .font(.system(size: 10))
                                }
                            }
                            .foregroundStyle(.black)
                        }
                        Spacer()
                        Image(systemName: "bell.badge.fill")
                            .font(.system(size: 22))
                            .padding(.trailing,10)
                            .foregroundStyle(Color.MainColor)
                    }
                    .padding(.horizontal,20)
                    .padding(.bottom,10)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .padding(.leading)
                        
                        TextField("Type to search", text: $SearchText)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding()
                    }
                    .background(Color(.systemGray6))
                    .cornerRadius(20)
                    .padding([.leading, .trailing], 20)
                    ScrollView {
                        VStack(alignment: .leading) {
                            HStack {
                            ScrollView (.horizontal,showsIndicators: false){
                                HStack {
                                    HStack {
                                        Image("banner")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .cornerRadius(20)
                                    }
                                    .frame(height: 200)
                                    HStack {
                                        Image("banner2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .cornerRadius(20)
                                    }
                                    .frame(height: 200)
                                }
                                }
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.gray,lineWidth: 1)
                                }
                            }
                            Text("Popular")
                                .bold()
                                .font(.system(size: 30))
                            ScrollView (.horizontal,showsIndicators: false){
                                HStack{
                                    ZStack (alignment: .bottom){
                                        Button{
                                            withAnimation{
                                                Click = "item1"
                                            }
                                        }label: {
                                            Item(Images: Image("product01"), title: "Poly-Vitamin Serum",color: Color.orange.opacity(0.5))
                                        }
                                        VStack {
                                            Button{
                                                withAnimation{
                                                    show = true
                                                }
                                            }label: {
                                                HStack{
                                                    Text("\(price)$")
                                                        .fontWeight(.medium)
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 17))
                                                        .padding(.leading,15)
                                                    Spacer()
                                                    Image(systemName: "bag.badge.plus")
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 20))
                                                        .padding(.trailing,15)
                                                }
                                                .frame(width: 160,height: 40)
                                                .background(Color.MainColor)
                                                .cornerRadius(15)
                                                .offset(y:-10)
                                            }
                                        }
                                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                                        
                                    }
                                    ZStack (alignment: .bottom){
                                        Button{
                                            withAnimation{
                                                Click = "item1"
                                            }
                                        }label: {
                                            Item(Images: Image("product02"), title: "Poly-Vitamin Serum",color: Color.pink.opacity(0.2))
                                        }
                                        VStack {
                                            Button{
                                                withAnimation{
                                                    show = true
                                                }
                                            }label: {
                                                HStack{
                                                    Text("\(price)$")
                                                        .fontWeight(.medium)
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 17))
                                                        .padding(.leading,15)
                                                    Spacer()
                                                    Image(systemName: "bag.badge.plus")
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 20))
                                                        .padding(.trailing,15)
                                                }
                                                .frame(width: 160,height: 40)
                                                .background(Color.MainColor)
                                                .cornerRadius(15)
                                                .offset(y:-10)
                                            }
                                        }
                                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                                        
                                    }
                                    ZStack (alignment: .bottom){
                                        Button{
                                            withAnimation{
                                                Click = "item1"
                                            }
                                        }label: {
                                            Item(Images: Image("product03"), title: "Poly-Vitamin Serum",color: Color.purple.opacity(0.2))
                                        }
                                        VStack {
                                            Button{
                                                withAnimation{
                                                    show = true
                                                }
                                            }label: {
                                                HStack{
                                                    Text("\(price)$")
                                                        .fontWeight(.medium)
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 17))
                                                        .padding(.leading,15)
                                                    Spacer()
                                                    Image(systemName: "bag.badge.plus")
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 20))
                                                        .padding(.trailing,15)
                                                }
                                                .frame(width: 160,height: 40)
                                                .background(Color.MainColor)
                                                .cornerRadius(15)
                                                .offset(y:-10)
                                            }
                                        }
                                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                                        
                                    }
                                    ZStack (alignment: .bottom){
                                        Button{
                                            withAnimation{
                                                Click = "item1"
                                            }
                                        }label: {
                                            Item(Images: Image("product04"), title: "Poly-Vitamin Serum",color: Color.orange.opacity(0.5))
                                        }
                                        VStack {
                                            Button{
                                                withAnimation{
                                                    show = true
                                                }
                                            }label: {
                                                HStack{
                                                    Text("\(price)$")
                                                        .fontWeight(.medium)
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 17))
                                                        .padding(.leading,15)
                                                    Spacer()
                                                    Image(systemName: "bag.badge.plus")
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 20))
                                                        .padding(.trailing,15)
                                                }
                                                .frame(width: 160,height: 40)
                                                .background(Color.MainColor)
                                                .cornerRadius(15)
                                                .offset(y:-10)
                                            }
                                        }
                                        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .bottom)
                                        
                                    }
                                    
                                    
                                }
                            }
                            Text("Best seller")
                                .bold()
                                .font(.system(size: 30))
                            ScrollView (.horizontal,showsIndicators: false){
                                HStack{
                                    Item(Images: Image("product01"),title: "Poly-Vitamin Serum",color: Color.orange.opacity(0.5))
                                    Item(Images: Image("product02"),title: "Poly-Vitamin Serum",color: Color.pink.opacity(0.1))
                                    Item(Images: Image("product03"),title: "Poly-Vitamin Serum",color: Color.purple.opacity(0.2))
                                    Item(Images: Image("product04"),title: "Poly-Vitamin Serum",color: Color.gray.opacity(0.6))
                                }
                            }
                        }
                        .padding()
                    }
                    .frame(width: .infinity,height: 600)
                    
                    Spacer()
                }
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .overlay(
            Alert(show: $show, colors: .green, Heading: "Successful", Title: "This item have been added")
            )
        
    }
}

struct Item : View {
    @State var Images: Image
    @State var title: String
    @State var color : Color
    var body: some View {
        HStack {
            VStack{
                Images
                    .resizable()
                    .frame(width: 160,height: 180)
                    .background(color)
                    .cornerRadius(20)
                Text("\(title)")
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .frame(width: 200)
                    .padding(.top,5)
                    .foregroundStyle(.black)
                Spacer()
                
            }
            .padding(.top,10)
            .frame(width: 180,height: 280)
            .background(Color.white.opacity(0.6))
            .cornerRadius(20)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray,lineWidth: 1)
            }
        
        }
        .frame(width: 190,height: 281)
    }
}
#Preview {
    HomeScreen(firstname: .constant("Hak"), lastname: .constant("Kimheng"),Click: .constant(""),show: .constant(false),SelectedTab: .constant(""))
}
