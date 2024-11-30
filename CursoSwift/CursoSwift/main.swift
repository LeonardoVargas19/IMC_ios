
import Foundation

// Definimos la tupla
let tupla = ("Rei Ayanami", 15, true, "Tokio 3")

// Imprimimos los valores de la tupla
print("Nombre: \(tupla.0)")
print("Edad: \(tupla.1)")
print("Es piloto: \(tupla.2 ? "Sí" : "No")")
print("Ciudad: \(tupla.3)")


//Nullabilida

var eva:String = "Rei"
var eva1:String? = nil

print(eva1)


func ejmploNil(_ text :String){
        
}

//ejmploNil(eva)
//ejmploNil(eva1 ?? "Azuka")
//ejmploNil(eva1!)
//
//func ejemplo2 ( _ text : String?){
//    if let example = text{
//        print(example)
//    }else{
//        print("Introduce un nommbre para continuar")
//    }
//    guard let exmaple2 = text else{
//        return
//    }
//    print("Hola example1 ")
//}
//
//ejemplo2(eva)
//ejemplo2(eva1)
//


// Clases

class Personas {
    var name : String
    var age : Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func greetings(){
        print("Soy \(name) y tengo  \(age)")
    }
}

var rei : Personas = Personas(name: "Rei Ayanami", age: 15)
var azuka : Personas = Personas(name: "Azuka Langlie", age: 15)

rei.greetings()
azuka.greetings()

struct ExampleStruct{
    var name :String
    var age  : Int
    
}
var exampleStruct : ExampleStruct = ExampleStruct(name: "Misato", age: 34)
exampleStruct.age



