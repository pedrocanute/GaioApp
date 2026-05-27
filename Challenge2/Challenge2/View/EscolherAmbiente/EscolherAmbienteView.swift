//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 20/05/26.
//

import SwiftUI

struct EscolherAmbienteView: View {
	@Binding var path: [RotaApp]
	
    @Environment(\.horizontalSizeClass) var tamanhoHorizontal
    @Environment(\.verticalSizeClass) var tamanhoVertical
    
    var noIPad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular}
    
    var body: some View {
            
            if noIPad {
                EscolherAmbienteIpadView(path: $path)
            } else {
				EscolherAmbienteIphoneView(path: $path)
            }
    }
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	EscolherAmbienteView(path: $path)
}

