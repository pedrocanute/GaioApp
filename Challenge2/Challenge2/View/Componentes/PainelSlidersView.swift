//
//  PainelSlidersView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct PainelSlidersView: View {
	var body: some View {
		ZStack{
			Rectangle()
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.foregroundStyle(.corFundoBege)
				.ignoresSafeArea()
			VStack(spacing: 20){
			
				SliderAguaView()
				SliderFungoView()
				SliderSolView()
		
				BotaoPrincipalView(textoBotao: "Escolher Outra Planta")
					.frame(width: 249)
			}
			.frame(width: 350)
			
		}
	}
}
#Preview {
	PainelSlidersView()
}
