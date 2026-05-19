//
//  BotaoEscolherAmbienteModel.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 18/05/26.
//

import SwiftUI

struct BotaoEscolherAmbienteModel: Hashable {
    let img: String
    let texto: String
    
    init(img: String, texto: String) {
        self.img = img
        self.texto = texto
    }
    
}
