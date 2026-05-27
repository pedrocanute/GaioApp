//
//  EscolherPlantaIPadView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct EscolherPlantaIPadView: View {
	@Binding var path: [RotaApp]

	var body: some View {
		GeometryReader { geo in
			let modoPaisagem = geo.size.width > geo.size.height
			
			if modoPaisagem {
				HStack(spacing: 0){
					ZStack{
						Color.corFundoVerdeEscuro
							.ignoresSafeArea()
						PainelEscolhaView(path: $path, destino: EscolherAmbienteIpadView(path: $path))
						
					}
					.frame(maxWidth: geo.size.width * 0.40, maxHeight: .infinity)
					ZStack{
						Color.corFundoBege
							.ignoresSafeArea()
						VStack{
							
							Spacer()
							Image("logoGaio")
								.resizable()
								.frame(maxWidth: 400, maxHeight: 481)
							Spacer()
							Text("O quebra-galho do cultivo de plantas")
								.font(.custom("CreatoDisplay-Regular", size: 30))
								.foregroundStyle(.black)
							Spacer()
								
						}
					}
				}
				
			} else {
				
				ZStack(alignment: .bottom) {
					Color.corFundoBege.ignoresSafeArea(edges: .top)

					VStack {
						Spacer()
						Image("logoGaio")
							.resizable()
							.frame(maxWidth: 400, maxHeight: 481)
						Spacer()
						Text("O quebra-galho do cultivo de plantas")
							.font(.custom("CreatoDisplay-Regular", size: 30))
							.foregroundStyle(.black)
						Spacer()
						ZStack{
						PainelEscolhaView(path: $path, destino: EscolherAmbienteIpadView(path: $path))
						}
						.frame(height: geo.size.width / 2.4)
					}
				}
				.safeAreaInset(edge: .bottom, spacing: 0) {
					Color.corFundoVerdeEscuro
						.frame(height: 0)
						.background(Color.corFundoVerdeEscuro.ignoresSafeArea())
				}
			}
		}
	}
}
#Preview {
	@Previewable @State var path: [RotaApp] = []
	EscolherPlantaIPadView(path: $path)
}
