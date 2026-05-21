//
//  SliderFungoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct SliderFungoView: View {
	@State var fungo: Double = 0
	
	var body: some View {
		
		VStack (spacing: 20){
			HStack{
				Text("Quantidade de Fungicida (\(Int(fungo)) ml)")
					.font(.custom("CreatoDisplay-Regular", size: 15, relativeTo: .headline))
					.foregroundStyle(.corFundoVerdeEscuro)
				Spacer()
			}
			
			Slider(
				value: $fungo,
				in: 0...50,
				step: 25
				
			) {
				Text("Fungo")
			} minimumValueLabel: {
				Image(systemName: "microbe")
					.foregroundStyle(.purple)
			} maximumValueLabel: {
				Image(systemName: "microbe.fill")
					.foregroundStyle(.purple)
			}
			.frame(maxWidth: .infinity)
			
			
		}
		.tint(.corBotaoPrincipal)
		
	}
}
#Preview {
	SliderFungoView()
}
