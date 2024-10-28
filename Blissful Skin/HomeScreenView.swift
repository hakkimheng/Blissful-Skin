//
//  HomeScreenView.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 16/10/2024.
//

import SwiftUI

struct HomeScreenView: View {
    @State var selectedTab: String = "home"
    @Binding var firstname: String
    @Binding var lastname: String
    @Binding var Click: String
    @Binding var show: Bool
    @Binding var phonenumber : String
    @Binding var dob : Date
    var body: some View {
        ZStack{
            switch selectedTab {
                case "home":
                HomeScreen(firstname: $firstname, lastname: $lastname,Click: $Click,show: $show,SelectedTab: $selectedTab)
                    .animation(.smooth, value: 5)
                case "cart":
                    CartView()
                case "truck":
                    TruckView()
                case "person":
                    withAnimation {
                        PersonView(firstname: $firstname, lastname: $lastname, Click: $Click, phonenumber:$phonenumber, dob: $dob)
                    }
                default:
                HomeScreen(firstname: $firstname, lastname: $lastname,Click: $Click,show:$show,SelectedTab:$selectedTab)
            }
            HStack{
                TabBar(image: Image(systemName: "house"), action: {
                    selectedTab = "home"
                }, isSelected: selectedTab == "home")
                TabBar(image: Image(systemName: "cart"), action: {
                    selectedTab = "cart"
                }, isSelected: selectedTab == "cart")
                TabBar(image: Image(systemName: "truck.box"), action: {
                    selectedTab = "truck"
                }, isSelected: selectedTab == "truck")
                TabBar(image: Image(systemName: "person"), action: {
                    selectedTab = "person"
                }, isSelected: selectedTab == "person")
            }
            
            .padding(.vertical,10)
            .padding(.horizontal,10)
            
            .background(Color.white)
            .clipShape(Capsule())
            .overlay {
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray,lineWidth: 1)
            }
            .padding(.horizontal)
            .shadow(color: .gray, radius: 0.8)
            
            .frame(maxHeight: .infinity,alignment: .bottom)
            .offset(y:20)
        }
    }
}

#Preview {
    let dobs = Date(timeIntervalSince1970: 946684800)
    HomeScreenView(firstname: .constant(""), lastname: .constant(""), Click: .constant(""), show: .constant(true), phonenumber: .constant(""), dob: .constant(dobs))
}
