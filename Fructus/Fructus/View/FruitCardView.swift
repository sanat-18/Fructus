//
//  FruitCardView.swift
//  Fructus
//
//  Created by Sanat Salian on 05/06/24.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - PROPERTIES
    @State private var isAnimationg: Bool = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                //FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimationg ? 1.0 : 0.6)
                
                //FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.16), radius: 2, x: 3, y: 3)
                
                //FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START
                
                StartButtonView()
            }//: ZSTACK
        }//: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimationg = true
            }
        })
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                .cornerRadius(20)
                .padding(.horizontal, 20)
        
        )
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[2])
        .previewLayout(.fixed(width: 320, height: 640))
}
