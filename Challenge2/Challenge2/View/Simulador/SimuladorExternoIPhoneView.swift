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
			let alturaHeader = altura * 0.12
			let alturaAmbiente = altura * 0.38
			let alturaPainel = altura - alturaHeader - alturaAmbiente
			

			VStack{
				Color.corCeuAzul
					.ignoresSafeArea(edges: .top)
				Color.corFundoBege
					.ignoresSafeArea(edges: .bottom)
			}
			
			VStack (spacing: 0){
//				Spacer()
				HeaderSimuladorView(largura: largura, altura: alturaHeader, modoPaisagem: false)
					.zIndex(1)
				
				AmbientePlantaView(largura: largura, altura: alturaAmbiente, imagemAmbiente: plantaController.imagemAmbienteExterna, imagemGirassol: plantaController.imagemGirassolExterna, interno: false, modoPaisagem: false, iPad: false, alertaAtual: plantaController.alertaAtual)
				
				PainelSlidersView(plantaController: plantaController, tipoAmbiente: .externo)
					.frame(height: alturaPainel)
					.padding(.bottom, 20)
				Spacer()
			}
		}
//		.toolbar(.hidden, for: .navigationBar)
	}
}


#Preview {
	SimuladorExternoIPhoneView()
}
