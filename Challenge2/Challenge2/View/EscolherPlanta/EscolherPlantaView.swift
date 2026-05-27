//
//  EscolherPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct EscolherPlantaView: View {
	
	@Environment(\.horizontalSizeClass) var tamanhoHorizontal
	@Environment(\.verticalSizeClass) var tamanhoVertical
	
	var noIPad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular}
	
	var body: some View {
			
			if noIPad {
				EscolherPlantaIPadView(path: $path)
			} else {
				EscolherPlantaIPhoneView()
			}
	}
}

#Preview {
	
	EscolherPlantaView()
}
