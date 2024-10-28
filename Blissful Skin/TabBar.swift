//
//  TabBar.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 15/10/2024.
//

import SwiftUI

struct  TabBar: View {
    let image: Image
    let action: ()-> Void
    let isSelected : Bool
    var body: some View {
        Button {
            action()
        } label: {
            image
                .frame(maxWidth: .infinity)
                .font(.system(size: 20))
                .frame(height: 60)
                .background(isSelected ? Color.MainColor : Color.clear)
                .cornerRadius(70.0)
                .foregroundColor(isSelected ? Color.white : Color.black)
        }
        
    }
}
