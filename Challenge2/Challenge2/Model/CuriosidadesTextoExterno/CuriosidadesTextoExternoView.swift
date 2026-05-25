//
//  CuriosidadesTextoExterno.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 22/05/26.
//

import SwiftUI
import Foundation

struct CuriosidadesTextoExternoView :Identifiable {
    let id = UUID()
    let texto : String
    
    init(texto: String) {
        self.texto = texto
    }
}
