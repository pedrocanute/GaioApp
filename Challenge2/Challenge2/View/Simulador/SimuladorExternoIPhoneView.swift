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
			
			
			Image("imgMeiaSombra")
				.resizable()
				.scaledToFill()
				.frame(width: largura)
				.frame(maxHeight: altura * 0.4)
			
			Image(plantaController.imagemGirassol)
				.resizable()
				.scaledToFit()
				.frame(width: largura, height: altura * 0.4)
				.position(x: largura * 0.499, y: altura * 0.28)
			VStack (spacing: 2){
				Spacer()
				Text("Condições de Cultivo")
					.font(.custom("Lalezar-Regular", size: 20))
					.foregroundStyle(.corFundoVerdeEscuro)
				
				
				SliderAguaView(agua: $plantaController.agua)
					.padding(.bottom, 10)
					.frame(maxWidth: 360)
					.frame(maxWidth: .infinity, alignment: .center)
					.onChange(of: plantaController.agua) {
						plantaController.atualizarImagemExterna()
					}
				SliderFungoView(fungo: $plantaController.qtdFungicida)
					.padding(.bottom, 10)
					.frame(maxWidth: 360)
					.frame(maxWidth: .infinity, alignment: .center)
					.disabled(true)
				SliderSolView(sol: $plantaController.sol)
					.padding(.bottom, 10)
					.frame(maxWidth: 360)
					.frame(maxWidth: .infinity, alignment: .center)
				
				
				BotaoPrincipalView(textoBotao: "Escolha Outra Planta")
					.frame(maxWidth: 249)
			}
		}
	}
}

#Preview {
	SimuladorExternoIPhoneView()
}
