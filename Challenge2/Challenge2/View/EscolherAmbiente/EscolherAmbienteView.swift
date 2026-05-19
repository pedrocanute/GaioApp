//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//

import SwiftUI

struct EscolherAmbienteView: View{
	var body: some View{
        
        VStack {
            ZStack(){
                HStack{
                    Spacer()
                    Image("Elipse1")
                }
                Text("Escolha do ambiente")
                    .font(.custom("Lalezar-Regular", size: 30))
                    .foregroundColor(.corFonteVerdeEscuro)
            }
            
            Text("Em qual ambiente gostaria de ver o seu Girassol? ")
                .font(.custom("CreatoDisplay-Regular", size: 24))
                .foregroundColor(.corFonteVerdeEscuro)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .frame(width: 300)
                
            BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[0])
                .padding(30)
            BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[1])
                .padding(30)
            
            BotaoPrincipalView()
                .frame(width: 209)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.corFundoBege)
	}
        
}

#Preview {
    EscolherAmbienteView()
}


