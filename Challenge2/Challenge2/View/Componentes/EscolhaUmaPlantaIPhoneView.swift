//
//  EscolhaUmaPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct EscolhaUmaPlantaIPhoneView: View {
	var body: some View {
		VStack{
			Text("Escolha uma planta")
				.font(.custom("Lalezar-Regular", size: 30))
				.foregroundStyle(.white)
			PlantaPickerView()
				.frame(maxWidth: 300)
			BotaoPrincipalView()
				.frame(width: <#T##CGFloat?#>)
		}
	}
}

#Preview {
	EscolhaUmaPlantaIPhoneView()
		.ignoresSafeArea()
}
