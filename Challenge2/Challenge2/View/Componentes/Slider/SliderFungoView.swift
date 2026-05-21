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
		
		VStack{
			HStack{
				Text("Quantidade de Fungicida")
					.font(.custom("CreatoDisplay-Regular", size: 14))
				Spacer()
			}
			
			Slider(
				value: $fungo,
				in: 0...50,
				
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
			
			Text("\(Int(fungo)) ml")
				.font(.custom("CreatoDisplay-Light", size: 13))
		}
		.tint(.corBotaoPrincipal)
		
	}
}
#Preview {
	SliderFungoView()
}
