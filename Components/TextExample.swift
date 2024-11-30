//
//  TextExample.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 18/11/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Rei Ayanami")
                .font(.system(
                    size: 49,
                    weight: .light,
                    design: .monospaced
                ))
                .italic()
                .bold()
                .underline()
                .foregroundColor(Color.purple)
                .background(.blue)
            Text("Rei ayanami piloto del eva ")
                .frame(width: 50)
                .lineLimit(2)
                .lineSpacing(12)
        }
    }
}

#Preview {
    TextExample()
}
