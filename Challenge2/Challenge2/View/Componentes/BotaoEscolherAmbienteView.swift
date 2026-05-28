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

            ZStack(alignment: .topTrailing) {

                Image(botao.img)
                    .resizable()
                    .scaledToFill()
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
			.frame(maxWidth: .infinity, maxHeight: .infinity)

        

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

