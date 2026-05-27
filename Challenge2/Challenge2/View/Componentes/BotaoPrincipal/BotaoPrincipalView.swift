//
//  BotaoPrincipalView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct BotaoPrincipalView: View {
	
	var textoBotao: String = "Confirmar"
	
	var body: some View {
		ZStack {
			Rectangle()
				.frame(maxWidth: .infinity)
				.frame(height: 44)
				.foregroundStyle(Color.corBotaoPrincipal)
				.cornerRadius(20)
			Text(textoBotao)
				.font(.custom("CreatoDisplay-Medium", size: 18))
				.foregroundStyle(Color.white)
		}
	}
}
#Preview {
	BotaoPrincipalView()
		.frame(width:209)
}
