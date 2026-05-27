//
//  EscolherAmbienteIphoneView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 20/05/26.
//

import SwiftUI

struct EscolherAmbienteIphoneView: View {
	@Binding var path: [RotaApp]
    @State private var ambienteSelecionado: String?

    var body: some View {
            GeometryReader { geo in
                let textoSize = geo.size.width * 0.05
                let larguraTexto = geo.size.width * 0.80
                let tamanhoEllipse = geo.size.width * 0.70
                let largura = geo.size.width * 1.0

                let infoLargura = largura * 0.20
                let infoAltura = infoLargura * 0.83

                VStack {
                    ZStack {
                        HStack {
                            Spacer()
                            ZStack{
                                Image("Elipse1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: tamanhoEllipse)
                            }
                        }

                        Text("Escolha do ambiente")
                            .font(.custom("Lalezar-Regular", size: 30))
                            .foregroundColor(.corFonteVerdeEscuro)
                    }

                    Text("Em qual ambiente gostaria de ver o seu Girassol?")
                        .font(.custom("CreatoDisplay-Regular", size: textoSize))
                        .foregroundColor(.corFonteVerdeEscuro)
                        .frame(width: larguraTexto)
                        .multilineTextAlignment(.center)
                        .lineLimit(2)

                    Spacer()
                    ZStack{
                        BotaoEscolherAmbienteView(
                            botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0],
                            ambienteSelecionado: $ambienteSelecionado
                        )
                        Button{
							path.append(.curiosidades(interno: false))
                        }label: {
                            Image("botaoInfo")
                                .resizable()
                                .frame(width: infoLargura, height: infoAltura)
                        }
						.position(x: geo.size.width * 0.65,y: geo.size.width * 0.08)
                    }
                    .frame(width: geo.size.width * 0.73)
                    .frame(height: geo.size.width * 0.8 * (180 / 323))
					
					ZStack {
						
						BotaoEscolherAmbienteView(
							botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1],
							ambienteSelecionado: $ambienteSelecionado
						)
						
						Button{
							path.append(.curiosidades(interno: false))
						}label: {
							Image("botaoInfo")
								.resizable()
								.frame(width: infoLargura, height: infoAltura)
						}
						.position(x: geo.size.width * 0.65,y: geo.size.width * 0.08)
						
					}
					.frame(width: geo.size.width * 0.73)
					.frame(height: geo.size.width * 0.8 * (180 / 323))

                    Spacer()

                    BotaoPrincipalView()
                        .frame(width: 209)
                        .disabled(ambienteSelecionado == nil)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.corFundoBege)
            
        }
    }
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	EscolherAmbienteIphoneView(path: $path)
}
