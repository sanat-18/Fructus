//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Sanat Salian on 06/06/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                    .font(.footnote)
            }
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
