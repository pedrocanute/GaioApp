//
//  SimuladorExternoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
import SwiftUI

struct SimuladorExternoIPhoneView: View {
	var body: some View {
		GeometryReader { geo in
			let largura = geo.size.width
			let altura = geo.size.height
			VStack{
				
				Color.corCeuAzul
					.ignoresSafeArea(edges: .top)
				Spacer()
				Color.corFundoBege
					.ignoresSafeArea(edges: .bottom)
				
			}
			ZStack{
				
				Image("imgMeiaSombra")
					.resizable()
					.frame(width: largura)
					.frame(maxHeight: altura * 0.59)
					.ignoresSafeArea()
				
					.safeAreaInset(edge: .bottom, spacing: 0) {
						PainelSlidersView()
							.frame(width: largura, height: altura * 0.54)
							.background(Color.corFundoBege)
					}
				Image("Girassol01")
					.resizable()
					.scaledToFit()
					.frame(width: largura, height: altura * 0.4)
					.position(x: largura * 0.522, y: altura * 0.29)
			}
		}
	}
}
#Preview {
	SimuladorExternoIPhoneView()
}
