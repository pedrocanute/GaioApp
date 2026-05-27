//
//  CuriosidadesTextoInternoModel.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 25/05/26.
//
import Foundation
import SwiftUI

struct CuriosidadesTextoInternoModel: Identifiable {
    let id = UUID()
    let texto : String
    
    init(texto: String) {
        self.texto = texto
    }
}
