//
//  PickerModel.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 18/05/26.
//

import SwiftUI

struct PlantaPickerModel: Identifiable,Hashable{
    let id = UUID()
    let nome: String
}

struct PlantasData{
    static let plantas:[PlantaPickerModel] = [
        PlantaPickerModel(nome: "Girassol"),
        PlantaPickerModel(nome: "planta Carnivora"),
        PlantaPickerModel(nome: "Costela De Adão")
    ]
    
}
