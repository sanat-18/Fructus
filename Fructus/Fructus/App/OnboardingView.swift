//
//  OnboardingView.swift
//  Fructus
//
//  Created by Sanat Salian on 05/06/24.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
                
            }//: LOOP
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView()
}
