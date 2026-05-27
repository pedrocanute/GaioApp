//
//  EscolherPlantaIPhoneView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct EscolherPlantaIPhoneView: View {
	@Binding var path: [RotaApp]
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
				
				PainelEscolhaView(path: $path, destino: EscolherAmbienteIpadView(path: $path))
					.frame(height: 300)
				
			}
			.background(Color.corFundoBege.ignoresSafeArea())
		}
	}
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	EscolherPlantaIPhoneView(path: $path)
}
