//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init ( velocidadInicial : Velocidades )  {
        self = velocidadInicial
    }
}

class Auto  {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
        switch (velocidad){
        case Velocidades.Apagado:
            velocidad = Velocidades.VelocidadBaja
        case Velocidades.VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
        case Velocidades.VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
        default:
            velocidad = Velocidades.VelocidadMedia
        }
        return  (velocidad.rawValue, "\(velocidad)")
    }
}


var auto : Auto = Auto()
var resultado : (actual : Int, velocidadEnCadena: String)

for i in 1 ... 20{
    if(i == 1) {
        print("\(auto.velocidad.rawValue), \(auto.velocidad)")
    } else {
        resultado = auto.cambioDeVelocidad()
        print("\(resultado.0), \(resultado.1)")
    }
}



