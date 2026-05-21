//
//  SliderView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct SliderAguaView: View {
	@State private var agua = 250.0
	
	var body: some View {
		VStack(spacing: 20){
			HStack{
				Text("Água (\(Int(agua)) mls)")
					.font(.custom("CreatoDisplay-Regular", size: 15))
					.foregroundStyle(.corFundoVerdeEscuro)
				Spacer()
			}
			
			Slider(
				value: $agua,
				in: 0...1000,
			) {
				Text("Agua")
			} minimumValueLabel: {
				Image(systemName: "drop")
					.foregroundStyle(.blue)
			} maximumValueLabel: {
				Image(systemName: "drop.fill")
					.foregroundStyle(.blue)
			}
			.frame(maxWidth: .infinity)
			
		}
		.tint(.corBotaoPrincipal)
	}
}
#Preview {
	SliderAguaView()
}
