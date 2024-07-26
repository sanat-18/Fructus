//
//  SettingslabelView.swift
//  Fructus
//
//  Created by Sanat Salian on 07/06/24.
//

import SwiftUI

struct SettingslabelView: View {
    
    var label: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingslabelView(label: "Fructus", labelImage: "info.circle")
}
