//
//  CuriosidadesView.swift
//  Challenge2
//
//  Created by Pedro Canute on 27/05/26.
//

import SwiftUI

struct CuriosidadesView: View {
	@Binding var path: [RotaApp]
	var interno: Bool
	
	@Environment(\.horizontalSizeClass) var tamanhoHorizontal
	@Environment(\.verticalSizeClass) var tamanhoVertical
	
	var noIpad: Bool {
		tamanhoHorizontal == .regular && tamanhoVertical == .regular
	}
	
	var body: some View {
		if noIpad {
			if interno {
				CuriosidadesInternoIpad()
			} else {
				CuriosidadesExternoIpad()
			}
		} else {
			if interno {
				CuriosidadesExterno() //arrumar
			} else {
				CuriosidadesExterno()
			}
		}
	}
}
