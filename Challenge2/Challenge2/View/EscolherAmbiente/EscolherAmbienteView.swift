//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//

import SwiftUI

struct EscolherAmbienteView: View{
	var body: some View{
        
        VStack (alignment: .trailing){
            ZStack(){
                Image("Elipse1")
                Text("Escolha do ambente")
                    
                    
            }
            
            Text("Em qual ambiente gostaria de ver o seu Girassol? ")
            
            BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[0])
                .padding(30)
            BotaoEscolherAmbienteView(botao  :BotaoEscolherAmbienteViewModel.botaoAmbiente[1])
                .padding(30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background()
	}
        
}

#Preview {
    EscolherAmbienteView()
}


