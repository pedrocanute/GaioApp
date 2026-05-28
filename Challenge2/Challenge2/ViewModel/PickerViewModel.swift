//
//  PickerViewModel.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 18/05/26.
//
import Foundation
import Combine

enum tipoPlanta{
    case girasol
    case costeladeadao
    case plantaCarnivora
}

struct PlantaPickerModel: Identifiable,Hashable{
    let id = UUID()
    let nome: String
    let tipo: tipoPlanta
}


class PickerViewModel: ObservableObject {
    @Published var plantaSelecionada: PlantaPickerModel
    
    var plantas: [PlantaPickerModel]{
        PlantasData.plantas
    }
    
    init() {
        self.plantaSelecionada = PlantasData.plantas.first(where: { $0.nome == "Girassol" }) ?? PlantasData.plantas[0]
    }
    func selecionarPlanta(_ planta: PlantaPickerModel) {
        plantaSelecionada = planta
    }
}

