//
//  SimuladorExternoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
import SwiftUI

struct SimuladorExternoIPhoneView: View {
	@State var plantaController = PlantaViewModel()
	
	var body: some View {
		GeometryReader { geo in
			let largura = geo.size.width
			let altura = geo.size.height
			
			VStack{
				
				Color.corCeuAzul
					.ignoresSafeArea(edges: .top)
				
				Spacer()
				Color.corFundoBege
					.ignoresSafeArea(edges: .bottom)
			}
			
			ZStack{
				HStack {
					Spacer()
					Rectangle()
						.frame(width: largura * 0.6 ,height: altura * 0.07)
						.cornerRadius(70)
						.foregroundStyle(.corFundoBege)
						.opacity(0.75)
						.shadow(radius: 0.2, y: 1)
					Spacer()
				}
				Text("Girassol no Jardim")
					.font(.custom("Lalezar-Regular", size: 24))
					.foregroundStyle(.corFundoVerdeEscuro)
					
			}
			.zIndex(1)
			
			Image(plantaController.imagemAmbiente)
				.resizable()
				.scaledToFill()
				.frame(width: largura)
				.frame(maxHeight: altura * 0.27)
			
			Image(plantaController.imagemGirassol)
				.resizable()
				.scaledToFit()
				.frame(width: largura, height: altura * 0.35)
				.position(x: largura * 0.499, y: altura * 0.28)
			
			VStack {
				Spacer()
				Text("Condições de Cultivo")
					.font(.custom("Lalezar-Regular", size: 20))
					.foregroundStyle(.corFundoVerdeEscuro)
				
				SliderAguaView(agua: $plantaController.agua)
					.padding(.bottom, 20)
					.frame(maxWidth: 360)
					.frame(maxWidth: .infinity, alignment: .center)
					.onChange(of: plantaController.agua) {
						plantaController.atualizarImagemExterna()
					}
				
				SliderFungoView(fungo: $plantaController.qtdFungicida)
					.padding(.bottom, 20)
					.frame(maxWidth: 360)
					.frame(maxWidth: .infinity, alignment: .center)
					.disabled(!plantaController.temFungo)
					.onChange(of: plantaController.qtdFungicida) {
						plantaController.atualizarImagemExterna()
					}
				
				SliderSolView(sol: $plantaController.sol)
					.padding(.bottom, 10)
					.frame(maxWidth: 360)
					.frame(maxWidth: .infinity, alignment: .center)
					.onChange(of: plantaController.sol) {
						plantaController.atualizarImagemExterna()
					}
				
				
				BotaoPrincipalView(textoBotao: "Escolha Outra Planta")
					.frame(maxWidth: 249)
			}
		}
	}
}

#Preview {
	SimuladorExternoIPhoneView()
}
