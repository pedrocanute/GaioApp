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
	
	var body: some View {
		VStack(spacing: 20){
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
			
		}
		.tint(.corBotaoPrincipal)
	}
}
#Preview {
	SliderSolView()
}
