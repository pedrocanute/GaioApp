//
//  SimuladorInternoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//

import SwiftUI

struct SimuladorInternoIPhoneView: View {
	@State var plantaController = PlantaViewModel()
	
	var body: some View {
		GeometryReader { geo in
			let largura = geo.size.width
			let altura = geo.size.height
			
			let alturaHeader = altura * 0.12
			let alturaAmbiente = altura * 0.38
			let alturaPainel = altura - alturaHeader - alturaAmbiente
			
			ZStack {
				VStack{
					Color.corAzulEscuro
						.frame(height: alturaHeader + alturaAmbiente)
					Color.corFundoBege
					
				}
				.ignoresSafeArea()
					
			
				VStack(spacing: 0){
				
				HeaderSimuladorView(largura: largura, altura: alturaHeader, modoPaisagem: false, titulo: "Girassol Interno")
					.zIndex(1)
				
					AmbientePlantaView(largura: largura, altura: alturaAmbiente, imagemAmbiente: plantaController.imagemAmbienteInterna, imagemGirassol: plantaController.imagemGirassolInterna, interno: true, modoPaisagem: false, iPad: false, alertaAtual: plantaController.alertaAtual)
					
				
				PainelSlidersView(plantaController: plantaController)
					.frame(height: alturaPainel)
			}
		}
	}
	}
}

#Preview {
	SimuladorInternoIPhoneView()
}
