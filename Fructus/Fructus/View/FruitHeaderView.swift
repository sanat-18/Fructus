//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Sanat Salian on 06/06/24.
//

import SwiftUI

struct FruitHeaderView: View {
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical , 20)
                .scaleEffect(isAnimating ? 1 : 0)
        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

#Preview {
    FruitHeaderView(fruit: fruitsData[0])
}
