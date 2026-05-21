//
//  PainelSlidersView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct PainelSlidersView: View {
	var body: some View {
		GeometryReader { geo in
			let largura = geo.size.width
			let altura = geo.size.height
			let tamanhoFrame = min(largura * 0.90, 500)
			
			ZStack{
				Rectangle()
					.frame(maxWidth: .infinity, maxHeight: .infinity)
					.foregroundStyle(.corFundoBege)
					.ignoresSafeArea()
				VStack {
					Spacer()
					Text("Condições de Cultivo")
						.font(.custom("Lalezar-Regular", size: 20, relativeTo: .title))
						.foregroundStyle(.corFundoVerdeEscuro)
						.padding(.top,5)
					SliderAguaView()
						.frame(maxWidth: tamanhoFrame)
					SliderFungoView()
						.frame(maxWidth: tamanhoFrame)
					SliderSolView()
						.frame(maxWidth: tamanhoFrame)
					Spacer()
					
					BotaoPrincipalView(textoBotao: "Escolher Outra Planta")
						.frame(width: min(largura * 0.7, 249))
				}
				.frame(maxWidth: .infinity)
			}
			
		}
	}
}
#Preview {
	PainelSlidersView()
}
