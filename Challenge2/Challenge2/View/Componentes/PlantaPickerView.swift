//
//  Untitled.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 18/05/26.
//

import SwiftUI


struct PlantasData{
    static let plantas:[PlantaPickerModel] = [
        PlantaPickerModel(nome: "Girassol", tipo: .girasol),
        PlantaPickerModel(nome: "Planta Carnivora", tipo: .plantaCarnivora),
        PlantaPickerModel(nome: "Costela-de-Adão", tipo: .costeladeadao)
    ]
    
}


struct PlantaPickerView: View {
    @StateObject var viewModel = PickerViewModel()

    var body: some View {
		
        VStack {
			Picker("Selecione", selection: $viewModel.plantaSelecionada) {
				ForEach(PlantasData.plantas) { planta in
					Text(planta.nome)
						.foregroundStyle(Color.white)
						.font(.custom("CreatoDisplay-regular", size: 20))
						.tag(planta)
				}
			}
			.pickerStyle(.wheel)  //.menu ou . segmented
			.frame(height: 100)
			.clipped()
		}
    }
}

#Preview {
    PlantaPickerView()
}
