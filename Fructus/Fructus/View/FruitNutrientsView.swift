//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Sanat Salian on 07/06/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    var body: some View {
        
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutients.count, id: \.self) { item in
                    
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
           
        }
        
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
