//
//  SemPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 27/05/26.
//

import SwiftUI

struct SemPlantaIphoneView: View {
	var body: some View {
								
				ZStack{
					
					Color.corFundoBege
						.ignoresSafeArea()
					VStack(spacing: 10){
						Spacer()
						
						Image("Vaso06")
							.resizable()
							.scaledToFill()
							.frame(maxWidth: 400, maxHeight: 200)
						Text("Ainda não cultivamos essa planta")
							.font(.custom("Lalezar-Regular", size: 30))
							.foregroundStyle(.corFundoVerdeEscuro)
							.multilineTextAlignment(.center)
						Spacer()
					
			}
		}
	}
}

#Preview {
	SemPlantaIphoneView()
}
