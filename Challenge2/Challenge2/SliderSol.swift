//
//  Slider.swift
//  Challenge2
//
//  Created by Pedro Canute on 12/05/26.
//
import SwiftUI

enum StatusIluminacao {
    case sombra
    case meiaSombra
    case iluminado
    
    var titulo: String {
        switch self {
        case .sombra:
            return "Sombra"
        case .meiaSombra:
            return "Meia sombra"
        case .iluminado:
            return "Iluminado"
        }
    }
    static func calcularStatus (valor: Double) -> StatusIluminacao {
        switch valor {
        case 0:
            return .sombra
        case 0.5:
            return .meiaSombra
        case 1.0:
            return .iluminado
            default :
            return .iluminado
        }
    }
}

struct SliderSol: View {
    @Binding var valor: Double
    var status: StatusIluminacao
    
    var body: some View {
        VStack{
            Text(status.titulo)
            Slider(value:$valor, in: 0...1, step: 0.5)
            
        }
    }
}
