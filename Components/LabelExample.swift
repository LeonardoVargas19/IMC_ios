//
//  LabelExample.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 18/11/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label(
            title:{Text("Misato")},
            icon: {Image("misato")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100)
            })
    }
}

#Preview {
    LabelExample()
}
