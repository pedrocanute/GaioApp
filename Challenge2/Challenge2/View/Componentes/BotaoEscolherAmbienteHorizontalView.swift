//
//  BotaoEscolherAmbienteHorizontalView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 21/05/26.
//

import SwiftUI

struct BotaoEscolherAmbienteHorizontalView: View {

    var botao: BotaoEscolherAmbienteModel
    @Binding var ambienteSelecionado: String?

    var body: some View {

        GeometryReader { geo in

            let largura = geo.size.width
            let altura = geo.size.height

            let infoLargura = largura * 0.20
            let infoAltura = infoLargura * 0.83

            let textoSize = largura * 0.06

            let selecionado = ambienteSelecionado == botao.texto

            ZStack(alignment: .topTrailing) {

                Image(botao.img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: largura, height: altura)
                    .clipped()
                    .cornerRadius(geo.size.width * 0.068)
                    
                
                VStack {

                    HStack (alignment: .top)  {
                        Spacer()

                        Image("botaoInfo")
                            .resizable()
                            .frame(width: infoLargura, height: infoAltura)
                    }

                    Spacer()

                    Text(botao.texto)
                        .font(.custom("Lalezar-Regular", size: textoSize))
                        .foregroundColor(.white)
                        .padding(.bottom, altura * 0.03)
                }
            }

            .scaleEffect(selecionado ? 1.05 : 1)

            .animation(.spring(response: 0.35, dampingFraction: 0.7), value: selecionado)

            .onTapGesture {
                ambienteSelecionado =
                ambienteSelecionado == botao.texto
                ? nil
                : botao.texto
            }
        }

        .frame(width: 500, height: 280)
    }
}

#Preview {

    struct PreviewWrapper: View {

        @State var ambiente: String?

        var body: some View {

            VStack {

                BotaoEscolherAmbienteHorizontalView(
                    botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0],
                    ambienteSelecionado: $ambiente
                )
                
                Spacer()

                BotaoEscolherAmbienteHorizontalView(
                    botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1],
                    ambienteSelecionado: $ambiente
                )
                
            }
        }
    }

    return PreviewWrapper()
}
