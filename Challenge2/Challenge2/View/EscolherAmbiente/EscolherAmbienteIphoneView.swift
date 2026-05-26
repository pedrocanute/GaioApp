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
            
            
            let tituloSize =  geo.size.width * 0.05
            
            let textoSize = geo.size.width * 0.04
            
            let larguraTexto = geo.size.width * 0.70
            
            let tamnhoEllipse = geo.size.width * 0.70
            
			NavigationStack{
				
		
            VStack {
                
                
                ZStack{
                    HStack {
                        Image("EllipseIpad")
                            .resizable()
                            .scaledToFit()
                            
                    }
                    .frame(width: tamnhoEllipse)
                           
                    
                    Text("Escolha do ambiente")
                        .font(.custom("Lalezar-Regular", size: tituloSize))
                        .foregroundColor(.corFonteVerdeEscuro)
                        
                }
                
                Text("Em qual ambiente gostaria de ver o seu Girassol?")
                    .font(.custom("CreatoDisplay-Regular", size: textoSize))
                    .foregroundColor(.corFonteVerdeEscuro)
                    .frame(width: larguraTexto)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                
				NavigationLink {
					SimuladorExternoIPhoneView()
				} label: {
					BotaoEscolherAmbienteView(
						botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0]
					)
				}
				NavigationLink {
					SimuladorInternoIPhoneView()
				} label: {
					BotaoEscolherAmbienteView(
						botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1]
					)
				}
               
                Spacer()
                BotaoPrincipalView()
                   
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.corFundoBege)
            
        }
		}
        
    }
}

#Preview {
    EscolherAmbienteIphoneView()
}
