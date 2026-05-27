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
        
        let larguraImage: CGFloat = noIPad ? 580.0 : 323.0
        
        let alturaImage = larguraImage * (180.0 / 323.0)
        
        let espacamentobotoes = noIPad ? 90.0: 20.0
        
        let infobotaolargura = noIPad ? 80.0: 66.0
        
        let infobotaotamanho = noIPad ? 67.0 : 55.0
        
        let paddinginfo = noIPad ? 0.0: 3.0
        
        let botaotexto = noIPad ? 32.0: 20.0

        
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
        }
        .frame(width: 323)
        .frame(maxHeight: 163)
        .padding(espacamentobotoes)
    }
}

#Preview {
    BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[0])
    BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[1])
    
    
}
