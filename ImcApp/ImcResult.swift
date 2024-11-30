//
//  ImcResult.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 30/11/24.
//

import SwiftUI

struct ImcResult: View {
    let userWeight: Double
    let userHeight: Double
    var body: some View {
        VStack {
            Text("Tu Resutltado")
                .font(.title).bold()
                .foregroundColor(.white)
            let result = calculateImc(weigth: userWeight, height: userHeight)
            InformationView(result: result)

        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroudApp)
    }
}

func calculateImc(weigth: Double, height: Double) -> Double {
    let result = weigth / ((height / 100) * (height / 100))
    return result
}

struct InformationView: View {
    let result: Double
    var body: some View {
        let information = getIMCResult(result: result)
        VStack {
            Spacer()
            Text(information.0).foregroundColor(information.2).font(.title)
                .bold()
            Spacer()
            Text("\(result,specifier: "%.2f") ").font(.system(size: 80)).bold()
                .foregroundColor(.white)
            Spacer()
            Text(information.1).foregroundColor(.white).font(
                .title2
            ).padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgrounComponent)
            .cornerRadius(16)
            .padding(15)
    }
}

func getIMCResult(result: Double) -> (String, String, Color) {
    let title: String
    let description: String
    let color: Color

    if result <= 0 {
        return ("Error", "El IMC no puede ser negativo o cero", Color.gray)
    }

    switch result {
    case 0.00..<20.00:
        title = "Peso Bajo"
        description = "Estas por debajo del peso recomendado según el IMC"
        color = Color.yellow
    case 20.00..<25.00:
        title = "Peso Normal"
        description = "Estas en el peso recomendado según el IMC"
        color = Color.green
    case 25.00..<30.00:
        title = "Sobrepeso"
        description = "Estas por encima del peso recomendado según el IMC"
        color = Color.orange
    case 30.00...:
        title = "Obesidad"
        description = "Estas muy por encima del peso recomendado según el IMC"
        color = Color.red
    default:
        title = "Error"
        description = "Ha ocurrido un error"
        color = Color.gray
    }

    return (title, description, color)
}


#Preview {
    ImcResult(userWeight: 80, userHeight: 190)
}
