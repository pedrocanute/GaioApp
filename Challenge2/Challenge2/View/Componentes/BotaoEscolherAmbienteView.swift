//
//  BotaoEscolherAmbienteView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 18/05/26.
//

import SwiftUI

struct BotaoEscolherAmbienteView: View {

    var botao: BotaoEscolherAmbienteModel
    @Binding var ambienteSelecionado: String?

    var body: some View {
            

        GeometryReader { geo in

            let largura = geo.size.width * 1.0
            let altura = largura * (180 / 323)

            let textoSize = largura * 0.065
            let paddingTexto = altura * 0.02

            let selecionado =
            ambienteSelecionado == botao.texto

            ZStack(alignment: .topTrailing) {

                Image(botao.img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: .infinity, height: .infinity)
                    .clipped()
                    

                VStack {

                    HStack {
                        Spacer()
                    }

                    Spacer()

                    Text(botao.texto)
                        .font(.custom("Lalezar-Regular", size: textoSize))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom, paddingTexto)
                }
            }

            .scaleEffect(selecionado ? 1.05 : 1)

            .animation(
                .spring(response: 0.3, dampingFraction: 0.7),
                value: selecionado
            )

            .onTapGesture {

                ambienteSelecionado =
                ambienteSelecionado == botao.texto
                ? nil
                : botao.texto
            }

            .frame(width: largura, height: altura)
        }
    }
}

#Preview {

    @Previewable @State var ambienteSelecionado: String? = "Jardim"
    
    BotaoEscolherAmbienteView(botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0] , ambienteSelecionado: $ambienteSelecionado)
        .frame(width: 320)
}
