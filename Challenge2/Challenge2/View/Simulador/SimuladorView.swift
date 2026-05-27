//
//  SimuladorView.swift
//  Challenge2
//
//  Created by Pedro Canute on 27/05/26.
//

import SwiftUI

struct SimuladorView: View {
	
	@Binding var path: [RotaApp]
	
	@Environment(\.horizontalSizeClass) var tamanhoHorizontal
	@Environment(\.verticalSizeClass) var tamanhoVertical
	
	var noIpad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular }
	let interno: Bool
	
	var body: some View {
		if noIpad {
			if interno {
				SimuladorInternoIPadView(path: $path)
			} else {
				SimuladorExternoIPadView(path: $path)
			}
		} else {
			if interno {
				SimuladorInternoIPhoneView(path: $path)
			} else {
				SimuladorExternoIPhoneView(path: $path)
			}
		}
	}
}
#Preview {

	@Previewable @State var path: [RotaApp] = []
	SimuladorView(path: $path, interno: false)

}
