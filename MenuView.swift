import SwiftUI






struct MenuView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(
                    destination:( ImcView()) ,
                    label: {Text("IMC Calculator")})
                Text("IMC Calculator")
                Text("App 1")
                Text("App 2")
                Text("App 3")
            }
        }
    }
}

#Preview {
    MenuView()
}
