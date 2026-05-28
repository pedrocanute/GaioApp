//
//  SplashScreenView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct SplashScreenView: View {
	@State private var mostrarSplash = true
	@State private var opacidadeLogo = 0.0
	@State private var escalaLogo: CGFloat = 0.82
	@State private var opacidadeSplash = 1.0

	var body: some View {
		ZStack {
			Navegacao()

			if mostrarSplash {
				ZStack {
					Color.corFundoBege
						.ignoresSafeArea()

					Image("logoGaio")
						.resizable()
						.scaledToFit()
						.frame(maxWidth: 260, maxHeight: 260)
						.padding(.horizontal, 24)
						.opacity(opacidadeLogo)
						.scaleEffect(escalaLogo)
				}
				.opacity(opacidadeSplash)
			}
		}
		.onAppear {
			withAnimation(.spring(response: 1.2, dampingFraction: 0.82)) {
				opacidadeLogo = 1
				escalaLogo = 1.0
			}

			DispatchQueue.main.asyncAfter(deadline: .now() + 1.9) {
				withAnimation(.easeInOut(duration: 0.6)) {
					opacidadeSplash = 0
				}
			}

			DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
				mostrarSplash = false
			}
		}
	}
}
