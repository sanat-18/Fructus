//
//  SettingsView.swift
//  Fructus
//
//  Created by Sanat Salian on 07/06/24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical) {
                VStack(spacing: 20) {
                    //1
                    
                    GroupBox(
                        label: SettingslabelView(label: "Fructus", labelImage: "info.circle")) {
                           Divider()
                                .padding(.vertical, 4)
                            
                            HStack(alignment: .center, spacing: 10, content: {
                                
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80, alignment: .center)
                                    .cornerRadius(9)
                                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                  .font(.footnote)
                            })
                    }
                    
                    
                    //2
                    
                    
                    
                    
                    //3
                    
                    GroupBox(label: SettingslabelView(label: "Application", labelImage: "apps.iphone"), content: {
                       
                        
                        SettingsRowView(name: "Developer", content: "John / Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    })
                    
                    
                }//:VSTACK
                .navigationTitle("Settings")
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                
                )
                .padding()
            }//: SCROLLVIEW
        }//: NAVIGATION
    }
}

#Preview {
    SettingsView()
}
