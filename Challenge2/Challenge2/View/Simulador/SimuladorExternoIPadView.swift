//
//  SimuladorExternoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
import SwiftUI

struct SimuladorExternoIPadView: View {
	@Binding var path: [RotaApp]
	
	@State var plantaController = PlantaViewModel()
	
	var body: some View {
		GeometryReader { geo in
			let largura = geo.size.width
			let altura = geo.size.height
			let modoPaisagem = largura > altura
			let alturaHeader = altura * 0.12
			let alturaAmbiente = altura * 0.50
			let alturaPainel = altura - alturaHeader - alturaAmbiente
			
			if modoPaisagem {
				let larguraPainel = largura * 0.5
				let larguraAmbiente = largura * 0.5
				HStack (spacing: 0) {
					
					ZStack {
						Color.corFundoBege
							.ignoresSafeArea()
						PainelSlidersView(plantaController: plantaController, tipoAmbiente: .externo)
							.frame(height: altura * 0.5)
						
					}
					.frame(width: larguraPainel, height: altura)
					
					ZStack {
						Color.corCeuAzul
							.ignoresSafeArea()
						
						VStack(spacing: 0) {
							
							HeaderSimuladorView(largura: larguraAmbiente, altura: altura * 0.16, modoPaisagem: true)
								.zIndex(1)
							Spacer()
							
							AmbientePlantaView(largura: larguraAmbiente, altura: altura * 0.9, imagemAmbiente: plantaController.imagemAmbienteExternaIPad, imagemGirassol: plantaController.imagemGirassolExterna, interno: false, modoPaisagem: true, iPad: true, alertaAtual: plantaController.alertaAtual)
						}
					}
					.frame(width: larguraAmbiente, height: altura)
				}
				
			} else {
				ZStack {
					VStack(spacing: 0){
						Color.corCeuAzul
							.ignoresSafeArea(edges: .top)
						Color.corFundoBege
							.ignoresSafeArea(edges: .bottom)
					}
				}
				
				VStack (spacing: 0){
					
					HeaderSimuladorView(largura: largura, altura: alturaHeader, modoPaisagem: false)
//						.zIndex(1)
					
					AmbientePlantaView(largura: largura, altura: alturaAmbiente, imagemAmbiente: plantaController.imagemAmbienteExterna, imagemGirassol: plantaController.imagemGirassolExterna, interno: false, modoPaisagem: false, iPad: true, alertaAtual: plantaController.alertaAtual)
					Spacer()
					PainelSlidersView(plantaController: plantaController, tipoAmbiente: .externo)
						.frame(height: altura * 0.4)
				}
			}
		}
	}
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	SimuladorExternoIPadView(path: $path)
}
