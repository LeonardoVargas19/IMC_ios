//
//  ButtonExampe.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 18/11/24.
//

import SwiftUI

struct ButtonExampe: View {
    var body: some View {
        Button("Rei"){
            print("Hola ")
        }
        
        Button(action: {print("Rei Ayanami")}, label: {
            Text("Misato")
                .frame(width: 100,height: 50)
                .background(.purple)
                .foregroundColor(.red)
                .cornerRadius(9.0)
        })
        
        
        
    }
}
struct Counter:View {
    @State var numPilotos = 0
    var body: some View {
        Button(action: {
            numPilotos += 1
            
        },
               label: {
            Text("Misato: \(numPilotos)")
                .bold()
                .frame(width: 100,height: 50)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(9.0)
        })
    }
}

#Preview {
    Counter()
}
