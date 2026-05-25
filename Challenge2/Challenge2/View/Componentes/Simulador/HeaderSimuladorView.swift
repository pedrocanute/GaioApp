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
				Rectangle()
					.frame(width: modoPaisagem ? largura * 0.25 : largura * 0.6 ,height: altura * 0.04)
					.cornerRadius(70)
					.foregroundStyle(.corFundoBege)
					.opacity(0.75)
					
				
				Text(titulo)
					.font(.custom("Lalezar-Regular", size: 24))
					.foregroundStyle(.corFundoVerdeEscuro)
			}
			Spacer()
		}
		
	}
}

#Preview {
	HeaderSimuladorView(largura: 200, altura: 100, modoPaisagem: true)
}
