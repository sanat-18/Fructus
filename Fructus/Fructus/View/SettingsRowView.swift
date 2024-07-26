//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Sanat Salian on 07/06/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    var body: some View {
        VStack {
            
            Divider()
                .padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundStyle(.gray)
                
                Spacer()
                if content != nil {
                    Text(content!)
                }  else if linkLabel != nil && linkDestination != nil {
                    Link(destination: URL(string: "https;//\(linkDestination)")!) {
                        Text(linkLabel!)
                    }
                    
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                    
                }
                
                
                else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "Jhon / Jane")
}
