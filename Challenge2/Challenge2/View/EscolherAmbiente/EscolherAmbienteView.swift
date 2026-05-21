//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 20/05/26.
//

import SwiftUI

struct EscolherAmbienteView: View {
    
    @Environment(\.horizontalSizeClass) var tamanhoHorizontal
    @Environment(\.verticalSizeClass) var tamanhoVertical
    
    var noIPad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular}
    
    var body: some View {
            
            if noIPad {
                EscolherAmbienteIpadView()
            } else {
                EscolherAmbienteIphoneView()
            }
    }
}

#Preview {
    EscolherAmbienteView()
}

