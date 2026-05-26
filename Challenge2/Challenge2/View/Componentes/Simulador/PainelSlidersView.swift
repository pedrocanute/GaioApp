//
//  PainelSlidersView.swift
//  Challenge2
//
//  Created by Pedro Canute on 25/05/26.
//

import SwiftUI

struct PainelSlidersView: View {
	@Bindable var plantaController: PlantaViewModel
	var body: some View {
		GeometryReader { geo in
			
			let largura = geo.size.width
			let larguraSlider = min(largura * 0.9, 520)
			
			ZStack{
				
				VStack {
					
					Text("Condições de Cultivo")
						.font(.custom("Lalezar-Regular", size: 20))
						.foregroundStyle(.corFundoVerdeEscuro)
						.padding(.top, 20)
					
					
					SliderAguaView(agua: $plantaController.agua)
						.padding(.bottom, 20)
						.frame(maxWidth: larguraSlider)
						.frame(maxWidth: .infinity, alignment: .center)
						.onChange(of: plantaController.agua) {
							plantaController.atualizarImagemExterna()
						}
					SliderFungoView(fungo: $plantaController.qtdFungicida)
						.padding(.bottom, 20)
						.frame(maxWidth: larguraSlider)
						.frame(maxWidth: .infinity, alignment: .center)
						.onChange(of: plantaController.qtdFungicida) {
							plantaController.atualizarImagemExterna()
						}
					SliderSolView(sol: $plantaController.sol)
						.padding(.bottom, 10)
						.frame(maxWidth: larguraSlider)
						.frame(maxWidth: .infinity, alignment: .center)
						.onChange(of: plantaController.sol) {
							plantaController.atualizarImagemExterna()
						}
					
					BotaoPrincipalView(textoBotao: "Escolha Outra Planta")
						.frame(maxWidth: 249)
				}
			}
			.environment(\.colorScheme, .light)
		}
		.background(Color.corFundoBege)
	}
}
#Preview {
	@Previewable @State var plantaController = PlantaViewModel()
	PainelSlidersView(plantaController: plantaController)
}
