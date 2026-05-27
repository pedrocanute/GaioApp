//
//  SemPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 27/05/26.
//

import SwiftUI

struct SemPlantaView: View {
	
	@Environment(\.horizontalSizeClass) var tamanhoHorizontal
	@Environment(\.verticalSizeClass) var tamanhoVertical
	
	var noIPad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular}
	
	var body: some View {
		if noIPad {
			SemPlantaIpadView()
		} else {
			SemPlantaIphoneView()
		}
	}
}

