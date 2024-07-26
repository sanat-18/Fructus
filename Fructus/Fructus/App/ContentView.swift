//
//  ContentView.swift
//  Fructus
//
//  Created by Sanat Salian on 05/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                   
                }
                
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isSettings = true
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                    })
                                        .sheet(isPresented: $isSettings, content: {
                                            SettingsView()
                                        })

            
            )
        }
    }
}

#Preview {
    ContentView()
}
