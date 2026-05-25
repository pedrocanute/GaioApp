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
			VStack {
				Color.corAzulEscuro
					.ignoresSafeArea(edges: .top)
				Color.corFundoBege
					.ignoresSafeArea(edges: .bottom)
			}
			
			VStack {
				
				HeaderSimuladorView(largura: largura, altura: altura, titulo: "Girassol Interno")
					.zIndex(1)
				
				AmbientePlantaView(largura: largura, altura: altura, imagemAmbiente: plantaController.imagemAmbienteInterna, imagemGirassol: plantaController.imagemGirassolInterna, interno: true)
					
				
				PainelSlidersView(plantaController: plantaController)
					.frame(height: altura * 0.4)
			}
		}
	}
}

#Preview {
	SimuladorInternoIPhoneView()
}
