//
//  EscolherAmbienteIphoneView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 20/05/26.
//

import SwiftUI

struct EscolherAmbienteIphoneView: View {
    
    
    var body: some View {
        GeometryReader{ geo in
                
                let textoSize = 18.0
                
                let larguraTexto = geo.size.width * 0.80
                
                let tamnhoEllipse = geo.size.width * 0.70
                
               
                VStack {
                    
                
                    ZStack{
                        HStack {
                            Spacer()
                            Image("Elipse1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: tamnhoEllipse)
                        }
                        
                               
                        
                        Text("Escolha do ambiente")
                            .font(.custom(
                                "Lalezar-Regular",
                                size: 30,
                                relativeTo: .title))
                            .foregroundColor(.corFonteVerdeEscuro)
                            
                    }
                    
                    Text("Em qual ambiente gostaria de ver o seu Girassol?")
                        .font(.custom("CreatoDisplay-Regular", size: textoSize, relativeTo: .body))
                        .foregroundColor(.corFonteVerdeEscuro)
                        .frame(width: larguraTexto)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                    
                BotaoEscolherAmbienteView(
                    botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0]
                )
                BotaoEscolherAmbienteView(
                    botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1]
                )
                
                Spacer()
                BotaoPrincipalView()
                        .frame(width: 209)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.corFundoBege)
            
        }
        
    }
}

#Preview {
    EscolherAmbienteIphoneView()
}
