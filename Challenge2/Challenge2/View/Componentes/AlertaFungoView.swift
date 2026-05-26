//
//  AlertaFungoView.swift
//  Challenge2
//
//  Created by Pedro Canute on 26/05/26.
//

import SwiftUI

struct AlertaFungoView: View {
	@State var pulando = false
	let iPad: Bool
	var body: some View {
		Image("alertaFungo")
			.resizable()
			.scaledToFit()
			.frame(width: iPad ? 200 : 120, height: iPad ? 200 : 120)
			.offset(y: pulando ? -5 : 0)
			.animation(.easeInOut(duration: 0.45).repeatForever(autoreverses: true), value: pulando)
			.onAppear {
				pulando = true
			}
	}
}
