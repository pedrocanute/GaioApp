//
//  EscolherPlantaIPhoneView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct EscolherPlantaIPhoneView: View {
	var body: some View {
		NavigationStack{
			VStack(alignment: .center) {
				
				Spacer()
				
				Image("logoGaio").resizable()
					.frame(maxWidth: 256, maxHeight: 308)
				Spacer()
				
				Text("O quebra-galho do cultivo de plantas")
					.font(.custom("CreatoDisplay-Regular", size: 20))
					.multilineTextAlignment(.center)
					.foregroundStyle(.black)
				
				Spacer()
				
				PainelEscolhaView(destino: EscolherAmbienteIphoneView())
					.frame(height: 300)
				
			}
			.background(Color.corFundoBege.ignoresSafeArea())
		}
	}
}

#Preview {
	EscolherPlantaIPhoneView()
}
