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
				.frame(width: 60 , height: 50)
				.padding(.top, 5)
				.padding(.bottom, 15)
				.foregroundStyle(.purple)
			
			VStack(alignment: .center, spacing: 0) {
				Text("Excesso de\n Fungicida!")
					.font(.custom("CreatoDisplay-Bold", size: 18))
					.foregroundStyle(.black)
					.padding(.bottom, 5)
				
				Text("Reduza a dosagem")
					.font(.custom("CreatoDisplay-Medium", size:  14))
					.foregroundStyle(.black)
					.padding(.bottom)
					
			}
		}
		.padding(.top, 10)
		.padding(.bottom, 20)
		.background {
			BalaoFalaShape()
				.fill(Color.corFundoBege.opacity(0.85))
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
