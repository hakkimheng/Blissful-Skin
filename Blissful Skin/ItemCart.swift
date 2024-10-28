//
//  ItemCart.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 18/10/2024.
//

import SwiftUI

struct ItemCart: View {
    @Binding var title: String
    @Binding var price: String
    @Binding var Click: String
    @Binding var show : Bool
    let Size: [String] = ["58ml","100ml","150ml"]
    @State private var DefultSelect: String = "58ml"
    @State var CircleShap: Bool = true
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                Spacer()
                ZStack(alignment: .top) {
                    Image("product01")
                        .resizable()
                        .frame(height: 350)
                    
                    Button{
                        withAnimation{
                            Click = "skip"
                        }
                    }label: {
                            HStack {
                                Image(systemName: "arrow.left.circle")
                                    .font(.system(size: 30))
                                    .foregroundColor(.black)
                            }
                            .frame(width: 60,height: 60,alignment: .center)
                            .padding([.leading,.top],10)
                            Spacer()
                        
                        
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .frame(height: 480)
                        .foregroundStyle(Color.white.opacity(0.7))
                        .cornerRadius(50, corners: .topLeft)
                    
                    VStack (alignment: .leading){
                        HStack {
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                    .font(.system(size: 20))
                                Text("4.5")
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)
                            }
                            .frame(width: 90,height: 50)
                            .background(Color.MainColor)
                            .cornerRadius(50)
                            Spacer()
                            Text("\(price)$")
                                .foregroundStyle(.red)
                                .bold()
                                .font(.system(size:30))
                                .padding(.trailing,30)
                        }
                        .padding(.top,20)
                        HStack{
                            Text("\(title)")
                                .bold()
                                .foregroundStyle(.orange)
                                .font(.system(size:30))
                            Spacer()
                        }
                        .padding(.top,5)
                        VStack{
                            HStack {
                                Text("Select Size:")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 15))
                                Spacer()
                            }
                            HStack{
                                ForEach(Size,id:\.self){size in
                                    Text(size)
                                        .font(.headline)
                                        .frame(width: 80,height: 40)
                                        .background(DefultSelect == size ?Color.red :.clear,in:.rect(cornerRadius: CircleShap ? 40:10))
                                        .foregroundColor(DefultSelect == size ? Color.yellow: Color.red)
                                        .onTapGesture {
                                            DefultSelect = size
                                        }
                                }
                                Spacer()
                            }
                        }
                        .padding(.top,0.2)
                        VStack{
                            HStack {
                                Text("Description")
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            
                            ScrollView{
                                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?")
                            }
                            .frame(width: .infinity,height: 120)
                            .padding(.horizontal,10)
                        }
                        .padding(.top,10)
                        HStack{
                            Button{
                                withAnimation{
                                    show = true
                                }
                            }label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .frame(width: 100,height: 60)
                                    HStack{
                                        Image(systemName: "bag.badge.plus")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 30))
                                    }
    
                                }
                            }
                            
                            Button{
                                
                            }label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .frame(width: 240,height: 60)
                                        .foregroundStyle(.orange)
                                    HStack{
                                        Image(systemName: "location.fill")
                                            .foregroundStyle(.white)
                                            .font(.system(size: 20))
                                            
                                        Text("Buy Now")
                                            .foregroundStyle(.white)
                                            .bold()
                                            .font(.system(size: 20))
                                    }
                                    .padding(.trailing,10)
    
                                    }
                            }
                        }
                        Spacer()

                    }
                    .padding(.leading,20)
                }
                
                        
            }
         
        }
        .background(Color.orange.opacity(0.6))
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        .overlay {
            Alert(show: $show, colors: .green, Heading: "Successful", Title: "This item have been added")
        }
    }
}

#Preview {
    ItemCart(title: .constant("Poly-Vitamin Serum"), price: .constant("12.50"),Click: .constant(""),show: .constant(true))
}
