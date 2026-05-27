//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//

import SwiftUI

struct EscolherAmbienteIpadView: View {
    
    @Environment(\.horizontalSizeClass) var tamanhoHorizontal
    @Environment(\.verticalSizeClass) var tamanhoVertical
    
    var body: some View {
<<<<<<< HEAD
		GeometryReader{ geo in
			
			let modoPaisagem = geo.size.width > geo.size.height
			
			let noIPad = tamanhoHorizontal == .regular
			
			let tituloSize = noIPad ? 36.0 : 20.0
			
			let textoSize = noIPad ? geo.size.width * 0.04 : geo.size.width * 0.06
			
			let larguraTexto = noIPad ? 500.0 : 300.0
			
			let larguraElipse = noIPad ? 200.0 : 100.0
			
			var noiIPad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular}
			NavigationStack{
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
					
					NavigationLink{
						SimuladorExternoIPadView()
					} label: {
						BotaoEscolherAmbienteView(
							botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0]
						)
					}
					
					NavigationLink {
						SimuladorInternoIPadView()
					} label: {
						
						BotaoEscolherAmbienteView(
							botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1]
						)
					}
					
					Spacer()
					BotaoPrincipalView()
						.frame(width: noIPad ? 352 : 209)
					Spacer()
				}
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.background(Color.corFundoBege)
				
			}
		}
=======
        GeometryReader{ geo in
            
            let modoPaisagem = geo.size.width > geo.size.height
            
            let tituloSize =  50.0
            
            let textoSize = 30.0
            
            let larguraTexto = geo.size.width * 0.50
            
            let tamanhoElipse = geo.size.width * 0.18
            
            var noiIPad: Bool { tamanhoVertical == .regular && tamanhoHorizontal == .regular}
            
            if modoPaisagem {
                VStack {
                    ZStack{
                        HStack {
                            Image("EllipseIpad")
                                .resizable()
                                .scaledToFit()
                                .frame(height:tamanhoElipse)
                        }
                        
                        Text("Escolha do ambiente")
                            .font(.custom("Lalezar-Regular", size: tituloSize, relativeTo: .title))
                            .foregroundColor(.corFonteVerdeEscuro)
                    }
                    
                    
                    Text("Em qual ambiente gostaria de ver o seu Girassol?")
                        .font(.custom("CreatoDisplay-Regular", size: textoSize, relativeTo: .body))
                        .foregroundColor(.corFonteVerdeEscuro)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        Spacer()
                    HStack{
                        Spacer()
                        BotaoEscolherAmbienteHorizontalView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[0])
                         Spacer()
                        BotaoEscolherAmbienteHorizontalView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[1])
                        
                        Spacer()
                        
                    }
                    Spacer()
                    BotaoPrincipalView()
                        .frame(width: 249)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.corFundoBege)
                
            }else {
                VStack {
                    
                    Spacer()
                    ZStack{
                        HStack {
                            Image("EllipseIpad")
                                .resizable()
                                .scaledToFit()
                                .frame(height:tamanhoElipse)
                        }
                        
                        Text("Escolha do ambiente")
                            .font(.custom("Lalezar-Regular", size: tituloSize))
                            .foregroundColor(.corFonteVerdeEscuro)
                    }
                    
                    .padding(.bottom, 10 )
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
                        .frame(width: 249)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.corFundoBege)
            }
        }
        
>>>>>>> origin/main
    }
}

#Preview {
    EscolherAmbienteIpadView()
}
