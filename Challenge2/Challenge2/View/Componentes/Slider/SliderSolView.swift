//
//  SliderSolView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct SliderSolView: View {
	@Binding var sol: Double
	
	var body: some View {
		VStack(spacing: 20){
			HStack{
				Text("Iluminação")
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
				Image(systemName: "cloud.sun.fill")
					.foregroundStyle(.blue)
			} maximumValueLabel: {
				Image(systemName: "sun.max.fill")
					.foregroundStyle(.orange)
			}
			.frame(maxWidth: .infinity)
			
		}
		.tint(.corBotaoPrincipal)
		
		Text("")
	}
}
#Preview {
	//SliderSolView()
}
