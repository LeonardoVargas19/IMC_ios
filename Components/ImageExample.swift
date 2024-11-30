//
//  ImageExample.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 18/11/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("misato")
            .resizable()
            .scaledToFill()
            .frame(width: 100,height: 100)
        Image(systemName: "figure.walk")
            .resizable()
            .frame(width: 50,height: 50)
    }
}

#Preview {
    ImageExample()
}
