//
//  CuriosidadesInterno.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 27/05/26.
//

//
//  CuriosidadesExterno.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//

import SwiftUI

struct CuriosidadesInterno: View {
	@Binding var path: [RotaApp]
    
    @StateObject private var pesquisaInterno = FAQVCuriosidadeInternoViewModel()
    
    @Environment(\.horizontalSizeClass) var tamanhoHorizontal
    
    @Environment(\.verticalSizeClass) var tamanhoVertical
    
    var body: some View {
        GeometryReader{ geo in
            
            let noIPad = tamanhoHorizontal == .regular
            
            let tituloSize =  35.0
            
            let titoloPesquisa = noIPad ? 30.0 : 20.0
            
            let pesquisaSize = noIPad ? 25.0 : 17.0
            
            let imagemSize = noIPad ? 450.0 : 250.0
            
            VStack{
                    Text("Curiosidades do\nGirassol no Jardim")
                        .font(.custom("lalezar-regular", size: tituloSize, relativeTo: .title3))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.corFonteVerdeEscuro)
                
                    
                List(pesquisaInterno.questionsInterno) { question in
                DisclosureGroup {
                    Image(question.image )
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: imagemSize, alignment: .center)
                        .padding(.top, geo.size.width * 0.025)
                        .padding(.bottom, geo.size.width * 0.025)
                    
                    Text(AttributedString(question.pesquisaTex))
                        .font(.custom("creatoDisplay-regular", size: pesquisaSize, relativeTo: .title2))
                    
                    
                } label: {
                    Text(question.titleTex)
                        .font(.custom("creatoDisplay-medium", size: titoloPesquisa, relativeTo: .title2))
                }
                .listRowBackground(Color.corElipseFundo)
                .listRowSeparator(.hidden)
                
            }
           
            .listStyle(.automatic)
            .scrollContentBackground(.hidden)
            .cornerRadius(40)
            

            }
            .background(Color.corFundoBege)
        }
		.environment(\.colorScheme, .light)
    }
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	CuriosidadesInterno(path: $path)
}

      
    

