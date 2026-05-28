//
//  SplashScreenView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct SplashScreenView: View {
	@State private var irParaProximaTela = false
	@State private var opacidadeLogo = 0.0

	var body: some View {
		ZStack {
			if irParaProximaTela {
				Navegacao()
					.transition(.opacity)
			} else {
				ZStack {
					Color.corFundoBege
						.ignoresSafeArea()

					Image("logoGaio")
						.resizable()
						.scaledToFit()
						.frame(maxWidth: 260, maxHeight: 260)
						.padding(.horizontal, 24)
						.opacity(opacidadeLogo)
				}
				.transition(.opacity)
			}
		}
		.onAppear {
			withAnimation(.easeIn(duration: 0.8)) {
				opacidadeLogo = 1
			}

			DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
				withAnimation(.easeInOut(duration: 0.9)) {
					irParaProximaTela = true
				}
			}
		}
	}
}

