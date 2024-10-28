//
//  blur.swift
//  Blissful Skin
//
//  Created by Heng MacBook Pro  on 14/10/2024.
//

import SwiftUI

// BlurView using UIViewRepresentable
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let blurView = UIVisualEffectView(effect: UIBlurEffect(style: style))
        blurView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return blurView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

// Glassmorphic Card
struct GlassCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color.white.opacity(0.2))
                .background(
                    BlurView(style: .systemThinMaterial)
                )
                .cornerRadius(25)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
            
            VStack {
                Text("Glassmorphism")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                
                Spacer()
                
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.pink)
                    Text("SwiftUI")
                        .foregroundColor(.white)
                }
                .padding(.bottom, 20)
            }
            .padding()
        }
        .padding()
    }
}

// Main View
struct GlassmorphismView: View {
    var body: some View {
        ZStack {
            // Background Image
            Image("background")
                .resizable()
                .scaledToFill()
              //  .edgesIgnoringSafeArea(.all)
            
            // Glassmorphic Card
            GlassCard()
                .frame(width: 300, height: 500)
        }
    }
}

#Preview{
    GlassmorphismView()
}
