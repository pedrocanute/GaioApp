//
//  SliderSolView.swift
//  Challenge2
//
//  Created by Pedro Canute on 20/05/26.
//
import SwiftUI

struct SliderSolView: View {
	@State private var sol = 1.0
	
	var body: some View {
		VStack{
			HStack{
				Text("Sol")
					.font(.custom("CreatoDisplay-Regular", size: 14))
				Spacer()
			}
			
			Slider(
				value: $sol,
				in: 1...3,
				step: 1
			) {
				Text("Sol")
			} minimumValueLabel: {
				Image(systemName: "sun.max")
					.foregroundStyle(.orange)
			} maximumValueLabel: {
				Image(systemName: "cloud.sun")
					.foregroundStyle(.orange)
			}
			.frame(maxWidth: .infinity)
			
			Text("")
		}
		.tint(.corBotaoPrincipal)
	}
}
#Preview {
	SliderSolView()
}
