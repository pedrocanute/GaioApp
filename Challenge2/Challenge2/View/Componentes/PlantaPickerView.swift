//
//  Untitled.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 18/05/26.
//

import SwiftUI

struct PlantaPickerView: View {
	@Binding var plantaSelecionada: PlantaPickerModel

	var body: some View {
		Picker("Selecione", selection: $plantaSelecionada) {
			ForEach(PlantasData.plantas) { planta in
				Text(planta.nome)
					.foregroundStyle(.white)
					.font(.custom("CreatoDisplay-Regular", size: 20))
					.tag(planta)
			}
		}
		.pickerStyle(.wheel)
		.frame(height: 100)
		.clipped()
	}
}

#Preview {
	@Previewable @State var planta = PlantasData.plantas[0]
	PlantaPickerView(plantaSelecionada: $planta)
}
