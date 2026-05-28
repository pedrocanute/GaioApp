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

            let textoSize =
            geo.size.width * 0.05

            let larguraTexto =
            geo.size.width * 0.80

            let tamanhoEllipse =
            geo.size.width * 0.70

            let largura =
            geo.size.width * 1.0

            let infoLargura =
            largura * 0.18

            let infoAltura =
            infoLargura * 0.75

            VStack {

                ZStack {

                    HStack {

                        Spacer()

                        ZStack {

                            Image("Elipse1")
                                .resizable()
                                .scaledToFit()
                                .frame(
                                    width: tamanhoEllipse
                                )
                        }
                    }

                    Text("Escolha do ambiente")
                        .font(
                            .custom(
                                "Lalezar-Regular",
                                size: 30
                            )
                        )
                        .foregroundColor(
                            .corFonteVerdeEscuro
                        )
                }

                Text(
                    "Em qual ambiente gostaria de ver o seu Girassol?"
                )

                .font(
                    .custom(
                        "CreatoDisplay-Regular",
                        size: textoSize
                    )
                )

                .foregroundColor(
                    .corFonteVerdeEscuro
                )

                .frame(width: larguraTexto)

                .multilineTextAlignment(.center)

                .lineLimit(2)

                Spacer()

                let selecionado1 =
                ambienteSelecionado ==
                BotaoEscolherAmbienteViewModel
                    .botaoAmbiente[0]
                    .texto

                ZStack {

                    BotaoEscolherAmbienteView(
                        botao:
                            BotaoEscolherAmbienteViewModel
                            .botaoAmbiente[0],

                        ambienteSelecionado:
                            $ambienteSelecionado
                    )

                    Button {

                        path.append(
                            .curiosidades(
                                interno: false
                            )
                        )

                    } label: {

                        Image("botaoInfo")
                            .resizable()
                            .frame(
                                width: infoLargura,
                                height: infoAltura
                            )
                    }

                    .position(
                        x: geo.size.width * 0.662,
                        y: geo.size.width * 0.067
                    )
                }

                .scaleEffect(
                    selecionado1 ? 1.05 : 1
                )

                .animation(
                    .spring(
                        response: 0.35,
                        dampingFraction: 0.7
                    ),
                    value: selecionado1
                )

                .frame(
                    width: geo.size.width * 0.73
                )

                .frame(
                    height:
                        geo.size.width
                    * 0.8
                    * (180 / 323)
                )

                let selecionado2 =
                ambienteSelecionado ==
                BotaoEscolherAmbienteViewModel
                    .botaoAmbiente[1]
                    .texto

                ZStack {

                    BotaoEscolherAmbienteView(
                        botao:
                            BotaoEscolherAmbienteViewModel
                            .botaoAmbiente[1],

                        ambienteSelecionado:
                            $ambienteSelecionado
                    )

                    Button {

                        path.append(
                            .curiosidades(
                                interno: true
                            )
                        )

                    } label: {

                        Image("botaoInfo")
                            .resizable()
                            .frame(
                                width: infoLargura,
                                height: infoAltura
                            )
                    }

                    .position(
                        x: geo.size.width * 0.662,
                        y: geo.size.width * 0.067
                    )
                }

                .scaleEffect(
                    selecionado2 ? 1.05 : 1
                )

                .animation(
                    .spring(
                        response: 0.35,
                        dampingFraction: 0.7
                    ),
                    value: selecionado2
                )

                .frame(
                    width: geo.size.width * 0.73
                )

                .frame(
                    height:
                        geo.size.width
                    * 0.8
                    * (180 / 323)
                )

                Spacer()

                Button {

                    if ambienteSelecionado ==
                        BotaoEscolherAmbienteViewModel
                        .botaoAmbiente[0]
                        .texto {

                        path.append(
                            .simulador(interno: false)
                        )

                    } else if ambienteSelecionado ==
                                BotaoEscolherAmbienteViewModel
                                .botaoAmbiente[1]
                                .texto {

                        path.append(
                            .simulador(interno: true)
                        )
                    }

                } label: {

                    BotaoPrincipalView()
                }

                .frame(width: 209)

                .disabled(
                    ambienteSelecionado == nil
                )
            }

            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )

            .background(Color.corFundoBege)
        }
    }
}

#Preview {

    @Previewable
    @State var path: [RotaApp] = []

    EscolherAmbienteIphoneView(path: $path)
}
