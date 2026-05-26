//
//  AlertaFungicidaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 26/05/26.
//

import SwiftUI

struct AlertaFungicidaView: View {
	
	@State private var pulando = false
	let iPad: Bool
	
	var body: some View {
		HStack(alignment: .center, spacing: iPad ? 18 : 10) {
			
			Image(systemName: "cross.vial.fill")
				.resizable()
				.scaledToFit()
				.frame(width: iPad ? 160 : 60, height: iPad ? 160 : 50)
				.offset(y: pulando ? -6 : 0)
				.padding(.top, 5)
				.padding(.bottom, 5)
				.foregroundStyle(.purple)
//				.animation(
//					.easeInOut(duration: 0.45)
////					.repeatForever(autoreverses: true),
////					value: pulando
//				)
			
			VStack(alignment: .leading, spacing: 0) {
				Text("Excesso de\nFungicida!")
					.font(.custom("CreatoDisplay-Bold", size: iPad ? 34 : 20))
					.foregroundStyle(.black)
					.padding(.bottom, 5)
				
				Text("Diminua a rega e\naumente a iluminação")
					.font(.custom("CreatoDisplay-Medium", size: iPad ? 22 : 14))
					.foregroundStyle(.black.opacity(0.75))
					.padding(.bottom)
					
			}
		}
		.padding(.horizontal, iPad ? 28 : 20)
		.padding(.top, iPad ? 22 : 20)
		.padding(.bottom, iPad ? 32 : 20)
		.background {
			BalaoFalaShape()
				.fill(Color.corFundoBege.opacity(0.75))
				.shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 4)
				.frame(width: 235)
		}
		.onAppear {
			pulando = true
		}
	}
}
#Preview {
	AlertaFungicidaView(iPad: false)
}
