//
//  BotaoEscolherAmbienteView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 18/05/26.
//

import SwiftUI



struct BotaoEscolherAmbienteView: View {

    var botao: BotaoEscolherAmbienteModel

    var body: some View {

        ZStack(alignment: .topTrailing) {

            Image(botao.img)
                .resizable()
                .scaledToFill()
                .frame(width: 323, height: 163)
                .clipped()
                .cornerRadius(25)

            VStack {

                
                HStack {

                    Spacer()
                    
                    
                    Image("botaoInfo")
                        .resizable()
                        .frame(width: 66, height: 55)
                      
                        
                }

                Spacer()

                
                Text(botao.texto)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 15)
            }
            .padding(.trailing, 3)
            
        }
        .frame(width: 323, height: 163)
    }
}

#Preview {
    BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[0])
    BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[1])
}
