//
//  BotaoEscolherAmbienteView.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 18/05/26.
//

import SwiftUI



struct BotaoEscolherAmbienteView: View {

    var botao: BotaoEscolherAmbienteModel
    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {
        
        let noIPad = horizontalSizeClass == .regular
        
        let larguraImage: CGFloat = noIPad ? 528.0 : 323.0
        
        let alturaImage = larguraImage * (163.0 / 323.0)
        
        let espacamentobotoes = noIPad ? 90.0: 20.0
        
        let infobotaolargura = noIPad ? 80.0: 66.0
        
        let infobotaotamanho = noIPad ? 67.0 : 55.0
        
        let paddinginfo = noIPad ? 5.0: 3.0
        
        let botaotexto = noIPad ? 24.0: 20.0

        ZStack(alignment: .topTrailing) {
        

            Image(botao.img)
                .resizable()
                .scaledToFill()
                .frame(width: larguraImage, height: alturaImage)
                .clipped()
                .cornerRadius(25)
                

            VStack {

                
                HStack {

                    Spacer()
                    
                    
                    Image("botaoInfo")
                        .resizable()
                        .frame(width: infobotaolargura, height: infobotaotamanho)
                      
                        
                }

                Spacer()

                
                Text(botao.texto)
                    .font(.custom("Lalezar-Regular", size: botaotexto))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, paddinginfo)
            }
            .padding(.trailing, paddinginfo)
            
        }
        .frame(width: 323, height: 163)
        .padding(espacamentobotoes)
    }
}

#Preview {
    BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[0])
    BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[1])
}
