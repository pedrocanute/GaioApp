//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//



import SwiftUI

import SwiftUI

struct EscolherAmbienteView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        let noIPad = horizontalSizeClass == .regular
        
        let tituloSize = noIPad ? 36.0 : 20.0
        
        let textoSize = noIPad ? 30.0 : 24.0
        
        let larguraTexto = noIPad ? 500.0 : 300.0
        
        let larguraElipse = noIPad ? 200.0 : 100.0
        
        
        VStack {
            
            Spacer()
            ZStack{
                HStack {
                    Image("EllipseIpad")
                        .resizable()
                        .scaledToFit()
                        .frame(height: larguraElipse)
                }
                
                Text("Escolha do ambiente")
                    .font(.custom("Lalezar-Regular", size: tituloSize))
                    .foregroundColor(.corFonteVerdeEscuro)
            }
            
            Text("Em qual ambiente gostaria de ver o seu Girassol?")
                .font(.custom("CreatoDisplay-Regular", size: textoSize))
                .foregroundColor(.corFonteVerdeEscuro)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: larguraTexto)
            
            BotaoEscolherAmbienteView(
                botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0]
            )
            BotaoEscolherAmbienteView(
                botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1]
            )
            	
            Spacer()
            BotaoPrincipalView()
                .frame(width: noIPad ? 352 : 209)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.corFundoBege)
        
    }
    
}

#Preview {
    EscolherAmbienteView()
}
