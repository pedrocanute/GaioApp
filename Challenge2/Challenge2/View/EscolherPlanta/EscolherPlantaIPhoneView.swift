//
//  EscolherPlantaIPhoneView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct EscolherPlantaIPhoneView: View {
	var body: some View {
		ZStack(alignment: .bottom) {
			Color.corFundoBege.ignoresSafeArea(edges: .top)

			VStack {
				Spacer()
				Image("logoGaio").resizable()
					.frame(maxWidth: 256, maxHeight: 308)
				Spacer()
				Text("Bem-vindo(a) ao Gaio")
					.font(.custom("CreatoDisplay-Regular", size: 20))
				Spacer()
				PainelEscolhaView()
			}
		}
		.safeAreaInset(edge: .bottom, spacing: 0) {
			Color.corFundoVerdeEscuro
				.frame(height: 0)
				.background(Color.corFundoVerdeEscuro.ignoresSafeArea())
		}
	}
}

#Preview {
	EscolherPlantaIPhoneView()
}
