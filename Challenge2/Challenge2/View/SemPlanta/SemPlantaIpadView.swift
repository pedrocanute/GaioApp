//
//  SemPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 27/05/26.
//

import SwiftUI

struct SemPlantaIpadView: View {
	@Binding var path: [RotaApp]
	var body: some View {
		GeometryReader { geo in
			let modoPaisagem = geo.size.width > geo.size.height
			
			if modoPaisagem {
				
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
							.font(.custom("Lalezar-Regular", size: 40))
							.foregroundStyle(.corFundoVerdeEscuro)
						Spacer()
					}
				}
			} else {
				
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
							.font(.custom("Lalezar-Regular", size: 40))
							.foregroundStyle(.corFundoVerdeEscuro)
						Spacer()
					}
				}
			}
		}
	}
}

#Preview {

	@Previewable @State var path: [RotaApp] = []
	SemPlantaIpadView(path: $path)

}
