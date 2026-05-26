//
//  HeaderSimuladorView.swift
//  Challenge2
//
//  Created by Pedro Canute on 25/05/26.
//

import SwiftUI

struct HeaderSimuladorView:View {
	let largura: CGFloat
	let altura: CGFloat
	var modoPaisagem: Bool
	var titulo: String = "Girassol no Jardim"
	var body: some View {
		HStack {
			Spacer()
			ZStack{
				
				Text(titulo)
					.font(.custom("Lalezar-Regular", size: modoPaisagem ? 20 : 24))
					.foregroundStyle(.corFundoVerdeEscuro)
					.padding(.horizontal, modoPaisagem ? 28 : 36)
					.padding(.vertical, 4)
					.background {
						Capsule()
							.fill(Color.corFundoBege.opacity(0.75))
					}
			}
			Spacer()
		}
		.frame(width: largura, height: altura)
		
	}
}

#Preview {
	HeaderSimuladorView(largura: 200, altura: 100, modoPaisagem: true)
}
