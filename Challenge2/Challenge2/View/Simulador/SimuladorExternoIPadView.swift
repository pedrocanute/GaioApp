//
//  SimuladorExternoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
import SwiftUI

struct SimuladorExternoIPadView: View {
	@State var plantaController = PlantaViewModel()
	
	
	var body: some View {
		GeometryReader { geo in
			let largura = geo.size.width
			let altura = geo.size.height
			let modoPaisagem = largura > altura
			
			if modoPaisagem {
				HStack (spacing: 0) {
					
					ZStack {
						Color.corFundoBege
							.ignoresSafeArea()
						PainelSlidersView(plantaController: plantaController)
						
					}
					.frame(width: largura * 0.5, height: altura)
					
					ZStack {
						Color.corCeuAzul
							.ignoresSafeArea()
						VStack(spacing: 0) {
							HeaderSimuladorView(largura: largura, altura: altura, modoPaisagem: true)
								.zIndex(1)
							Spacer()
							
							AmbientePlantaView(largura: largura * 0.5, altura: altura, imagemAmbiente: plantaController.imagemAmbienteExterna, imagemGirassol: plantaController.imagemGirassolExterna, interno: false, modoPaisagem: true)
								.frame(maxWidth: .infinity)
								.frame(height: 380)
							Spacer()
						}
					}
				}
				
			} else {
				
				VStack{
					Color.corCeuAzul
						.ignoresSafeArea(edges: .top)
					Color.corFundoBege
						.ignoresSafeArea(edges: .bottom)
				}
				
				VStack (spacing: 0){
					
					HeaderSimuladorView(largura: largura, altura: altura, modoPaisagem: false)
						.zIndex(1)
					
					AmbientePlantaView(largura: largura, altura: altura, imagemAmbiente: plantaController.imagemAmbienteExterna, imagemGirassol: plantaController.imagemGirassolExterna, interno: false, modoPaisagem: false)
					
					PainelSlidersView(plantaController: plantaController)
						.frame(height: altura * 0.4)
				}
			}
		}
	}
}


#Preview {
	SimuladorExternoIPadView()
}
