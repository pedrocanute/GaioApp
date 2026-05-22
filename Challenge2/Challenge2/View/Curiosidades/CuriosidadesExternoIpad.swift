//
//  CuriosidadesExternoIpad.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 21/05/26.
//

import SwiftUI


struct CuriosidadesExternoIpad: View {
    @StateObject private var pesquisaExteno = FAQVCuriosidadeExternoViewModel()
    
    @Environment(\.horizontalSizeClass) var tamanhoHorizontal
    
    @Environment(\.verticalSizeClass) var tamanhoVertical
    
    var body: some View {
        GeometryReader{ geo in
            
            let noIPad = tamanhoHorizontal == .regular
            
            let modoPaisagem = geo.size.width > geo.size.height
            
            let tituloSize = noIPad ? 50 : 35.0
            
            let titoloPesquisa = noIPad ? 30.0 : 20.0
            
            let pesquisaSize = noIPad ? 25.0 : 17.0
            
            let imagemSize = noIPad ? 450.0 : 250.0
            
            if modoPaisagem {
                ScrollView(.horizontal){
                    
                ZStack{
                    
                    Color.corFundoBege
                        .ignoresSafeArea()
                    VStack{
                            HStack{
                                Spacer()
                                Image("Vector 35")
                                    .ignoresSafeArea(edges: .all)
                                   
                        }
                        
                        Text(AttributedString("Curiosidades do\nGirassol no Jardim"))
                            .font(.custom("lalezar-regular", size: tituloSize, relativeTo: .title3))
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.corFonteVerdeEscuro)
                        
                        HStack{
                        ZStack{
                            Image("Ellipse 20")
                            .offset(x: geo.size.width * 0.15)
                            Image("Ellipse 10")
                                .offset(x: geo.size.width * -0.15, y: geo.size.height * 0.05)
                            Image("GirassolCentral")
                            }
                        }
                        
                        Text(AttributedString("Nome científico: **Helianthus annuus** Nome que vem do grego e significa “flor do sol”\n\n"  +
                            "Seu ciclo de vida é estritamente anual. Isso significa que a planta possui apenas uma estação de crescimento para realizar todo o seu desenvolvimento: germinar, crescer, florescer e produzir novas sementes.\n\n" + "Os girassóis não fazem a busca pelo sol; eles permanecem posicionados para o leste durante todo o dia. Portanto, é importante que não haja sombra nessa direção.\n\n" + "A espécie prefere clima quente e seco, solos bem drenados, ricos em matéria orgânica e com boa disponibilidade de nutrientes, no mínimo, 6 horas de sol direto por dia."))
                        
                        
                        
                
                        
                        Spacer()
                    }
                   
                }
                }
            }else{
                VStack{
                    Spacer()
                    VStack{
                        Text(AttributedString("Curiosidades do\nGirassol no Jardim"))
                            .font(.custom("lalezar-regular", size: tituloSize, relativeTo: .title3))
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .foregroundStyle(Color.corFonteVerdeEscuro)
                    }
                    VStack{
                        
                        List(pesquisaExteno.questions) { question in
                            DisclosureGroup {
                                Image(question.image )
                                    .resizable()
                                    .scaledToFit()
                                    .frame(maxWidth: .infinity, maxHeight: imagemSize, alignment: .center)
                                
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
                        
                    }
                    .cornerRadius(40)
                    
                    
                    Spacer()
                }
                .background(Color.corFundoBege)
            }
        }
    }
}
        
#Preview {
    CuriosidadesExternoIpad()
}
