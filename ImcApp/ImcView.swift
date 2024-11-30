//
//  ImcView.swift
//  Cusrso_ios
//
//  Created by Leo Romero on 20/11/24.
//

import SwiftUI

struct ImcView: View {
    @State var gender: Int = 1
    @State var height: Double = 150
    @State var age: Int = 25 // Estado para la edad
    @State var weight: Int = 60 // Estado para el peso

    var body: some View {
        VStack {
            HStack {
                ToggleButton(
                    text: "Hombre", imageName: "heart.fill", index: 1,
                    selectedGender: $gender)
                ToggleButton(
                    text: "Mujer", imageName: "star.fill", index: 0,
                    selectedGender: $gender)
            }
            HeightCalcuator(selectedHeight: $height)
            HStack {
                SelectedAge(selected: "Edad", selectedValue: $age) // Pasar la edad
                SelectedAge(selected: "Peso", selectedValue: $weight) // Pasar el peso
            }
            IMCCalculateButtonMenu(userWeight: Double(weight), userHeight: height)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroudApp)
        .toolbar {
            ToolbarItem(
                placement: .principal,
                content: {
                    Text("Imc Calculator")
                        .foregroundColor(.white)
                })
        }
    }
}


struct ToggleButton: View {
    let text: String
    let imageName: String
    let index: Int
    @Binding var selectedGender: Int
    
    var body: some View {
        let color =
        if index == selectedGender {
            Color.backgroundSelected
        } else {
            Color.backgrounComponent
        }
        Button(action: {
            selectedGender = index
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundColor(.white)
                InformationText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(color)
        }
    }
}

struct InformationText: View {
    let text: String
    var body: some View {
        Text(text).font(.largeTitle)
            .bold().foregroundColor(.white)
    }
}

struct HeightCalcuator: View {
    @Binding var selectedHeight: Double
    var body: some View {
        VStack {
            titleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 16)
        }.frame(maxWidth: .infinity, idealHeight: .infinity)
            .background(.backgrounComponent)
    }
}

struct titleText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}

struct SelectedAge: View {
    let selected: String
    @Binding var selectedValue: Int // Recibe el valor por binding

    var body: some View {
        VStack {
            titleText(text: selected)
            InformationText(text: "\(selectedValue)")
            HStack {
                ButtonMenuView(selected: $selectedValue, iconName: "minus.circle.fill")
              
                ButtonMenuView(selected: $selectedValue, iconName: "plus.circle.fill")
            }
            .frame(maxWidth: .infinity) // Ajustar el espacio horizontal
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Garantizar proporción
        .background(.backgrounComponent)
    }
}


struct ButtonMenuView: View {
    @Binding var selected: Int
    let iconName: String
    var body: some View {
        Button(
            action: {
                if iconName == "minus.circle.fill" && selected > 0 {
                    selected -= 1
                } else if iconName == "plus.circle.fill" {
                    selected += 1
                }
            }) {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60) // Tamaño ajustado del ícono
                    .foregroundColor(.purple)
            }
            .frame(width: 70, height: 70) // Tamaño del botón circular
            .background(Color.white)
            .clipShape(Circle())
            .shadow(radius: 5) // Sombra para un diseño más claro
    }
}

struct IMCCalculateButtonMenu : View {
    let userWeight:Double
    let userHeight:Double
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {ImcResult(userWeight: userWeight, userHeight: userHeight)}) {
                Text("Calcular").font(.title.bold()).foregroundColor(.purple)
                    .frame(maxWidth: .infinity,maxHeight: 100)
                    .background(.backgrounComponent)
            }
        }
    }
}


#Preview {
    //    ToggleButton(text: "Misato", imageName: "heart.fill", index: 1)
    ImcView()
}
