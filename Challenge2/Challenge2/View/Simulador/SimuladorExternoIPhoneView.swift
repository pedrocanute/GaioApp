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
				Color.corFundoBege
					.ignoresSafeArea(edges: .bottom)
			}
			
			VStack (spacing: 0){
				
				HeaderSimuladorView(largura: largura, altura: altura)
					.zIndex(1)
				
				AmbientePlantaView(largura: largura, altura: altura, imagemAmbiente: plantaController.imagemAmbienteExterna, imagemGirassol: plantaController.imagemGirassolExterna, interno: false)
				
				PainelSlidersView(plantaController: plantaController)
					.frame(height: altura * 0.4)
			}
		}
	}
}


#Preview {
	SimuladorExternoIPhoneView()
}
