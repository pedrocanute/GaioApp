//
//  SliderSolView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

enum StatusSol {
	case ensolarado, meiaSombra, sombra
}

struct SliderSolView: View {
	@State var sol = 1.0
	var status: StatusSol {
		switch sol {
		case 1:
			return .ensolarado
		case 2:
			return .meiaSombra
		case 3:
			return .sombra
		default:
			return .ensolarado
		}
	}
	var textoSol: String {

		switch status {
		case .ensolarado:
			return "Ensolarado"
		case .meiaSombra:
			return "Meia-Sombra"
		case .sombra:
			return "Sombra"
		}
	}
	
	var body: some View {
		VStack{
			HStack{
				Text("Sol")
					.font(.custom("CreatoDisplay-Regular", size: 15, relativeTo: .headline))
					.foregroundStyle(.corFundoVerdeEscuro)
				Spacer()
			}
			
			Slider(
				value: $sol,
				in: 1...3,
				step: 1
			) {
				Text("Sol")
			} minimumValueLabel: {
				Image(systemName: "sun.max.fill")
					.foregroundStyle(.orange)
			} maximumValueLabel: {
				Image(systemName: "cloud.sun.fill")
					.foregroundStyle(.blue)
			}
			.frame(maxWidth: .infinity)
			
			Text("\(textoSol)")
				.font(.custom("CreatoDisplay-Regular", size: 14, relativeTo: .body))
				.foregroundStyle(.corFundoVerdeEscuro)
			
		}
		.tint(.corBotaoPrincipal)
	}
}
#Preview {
	SliderSolView()
}
