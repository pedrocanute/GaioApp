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
			let isIPad = largura >= 700
			
			VStack{
				
				Spacer()
				ZStack {
					Color.corFundoVerdeEscuro
						.ignoresSafeArea()
						.frame(height: altura * 0.30)
					
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
	}
}

#Preview {
	
	EscolhaUmaPlantaView()
		.ignoresSafeArea()
}
