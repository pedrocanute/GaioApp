//
//  EscolhaUmaPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct EscolhaUmaPlantaView: View {
	var body: some View {
		
		GeometryReader { geometria in
			let largura = geometria.size.width
			let altura = geometria.size.height
			let noIPad = largura >= 700
			let naHorizontal = largura > altura
			
			if naHorizontal {
				
				HStack{
					
				painelVerde(noIPad: noIPad, altura: altura, largura: largura, naHorizontal: naHorizontal)
						.frame(maxWidth: 500, maxHeight: .infinity)
				}
				
			} else {
				
				VStack {
					Spacer()
					painelVerde(noIPad: noIPad, altura: altura, largura: largura, naHorizontal: naHorizontal)
					
				}
			}
		}
	}
	
	func painelVerde(noIPad: Bool, altura: Double, largura: Double, naHorizontal: Bool) -> some View {
		
		ZStack {
			if naHorizontal {
				Color.corFundoVerdeEscuro
					.ignoresSafeArea()
					.frame(height: noIPad ? altura  : altura * 0.30)
			} else {
				
				Color.corFundoVerdeEscuro
					.ignoresSafeArea()
					.frame(height: altura * 0.25)
			}
			
			VStack(spacing: 25){
				
				Text("Escolha uma planta")
					.font(.custom("Lalezar-Regular", size: 30))
					.foregroundStyle(Color.white)
				
				
				Text("Girassol")
					.font(.custom("CreatoDisplay-Regular", size: 20))
					.foregroundStyle(.white)
				
				BotaoPrincipalView()
					.frame(width: 209)
					.padding(.bottom)
				
			}
		}
	}
}

#Preview {
	
	EscolhaUmaPlantaView()
		.ignoresSafeArea()
}
