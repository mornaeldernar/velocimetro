import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init() {
        self = .Apagado
    }
}
class Auto{
    var velocidad : Velocidades
    init(){
        velocidad = Velocidades()
    }
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        let actual = velocidad.rawValue
        let velocidadEnCadena = "\(velocidad)"
        let resultado = (actual, velocidadEnCadena)
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        }
        return resultado
    }
}
var auto = Auto()
for _ in 0..<20 {
    let (actual,velocidad) = auto.cambioDeVelocidad()
    print("\(actual), \(velocidad)")
}
