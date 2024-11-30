//
//  TextFildExample.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 18/11/24.
//

import SwiftUI

struct TextFildExample: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu email",text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal,32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue)  y el nuevo valor era \(newValue)")
                }
            SecureField("Escribe tu Password",text: $email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.2))
                .cornerRadius(16)
                .padding(.horizontal,32)
                .onChange(of: email) { oldValue, newValue in
                    print("El antiguo valor era \(oldValue)  y el nuevo valor era \(newValue)")
                }
            
        }
        
    }
}

#Preview {
    TextFildExample()
}
