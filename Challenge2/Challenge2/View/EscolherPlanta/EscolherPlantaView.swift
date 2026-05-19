//
//  EscolherPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct EscolherPlantaView: View{
	var body: some View{
		VStack{
			Image("logoGaio")
				.resizable()
				.frame(maxWidth: 256, maxHeight: 308)
			EscolhaUmaPlantaIPhoneView()
				.ignoresSafeArea()
			
		}
	}
}

#Preview {
	
	EscolherPlantaView()
}
