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
    
    @StateObject private var textos = CuriosidadesViewModel()
    
    
    var body: some View {
        GeometryReader{ geo in
            
            let noIPad = tamanhoHorizontal == .regular
            
            let modoPaisagem = geo.size.width > geo.size.height
            
            let tituloSize = noIPad ? 50 : 35.0
            
            let titoloPesquisa = noIPad ? 30.0 : 20.0
            
            let pesquisaSize = noIPad ? 25.0 : 17.0
            
            let imagemSize = noIPad ? 420.0 : 250.0
            
            if modoPaisagem {
                
                ZStack{
                    
                    Color.corFundoBege
                    
                        .ignoresSafeArea()
                    ScrollView(.vertical){
                        VStack{
                            HStack{
                                Spacer()
                                Image("Vector 35")
                                    .ignoresSafeArea()
                                
                            }
                            VStack{
                                Text("Curiosidades do ")
                                    .padding(.bottom, -50)
                                Text("Girassol no Jardim")
                                    
                            }
                                    .font(.custom("lalezar-regular", size: tituloSize, relativeTo: .title3))
                                    .multilineTextAlignment(.center)
                                    .lineSpacing(10)
                                    .foregroundStyle(Color.corFonteVerdeEscuro)
                                    .padding(.top, -60)
                            
                            HStack{
                                ZStack{
                                    Image("Ellipse 20")
                                        .offset(x: geo.size.width * 0.15)
                                    Image("Ellipse 10")
                                        .offset(x: geo.size.width * -0.15, y: geo.size.height * 0.05)
                                    Image("GirassolCentral")
                                }
                            }
                            VStack(alignment: .leading, spacing: 20){
                                
                                
                                Text(
                                    "Nome científico: \(Text("Helianthus annuus").bold()) Nome que vem do grego e significa “flor do sol”"
                                )
                                Text(textos.texto2[0].texto)
                                Text(textos.texto3[0].texto)
                                Text(textos.texto4[0].texto)
                                
                            }
                            
                            .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                            .padding(.top, geo.size.width * 0.04)
                            .padding(.horizontal, geo.size.width * 0.09)
                            
                            Image("muitosGirassois")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.84, height: geo.size.width * 0.630)
                                .padding(.vertical, geo.size.height * -0.07)
                                
                            
                            
                            VStack (alignment: .leading, spacing: 20){
                                Text(textos.texto5[0].texto)
                                Text(textos.texto6[0].texto)
                                Text(textos.texto7[0].texto)
                            }
                            .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                            
                            .padding(.horizontal, geo.size.width * 0.086)
                            
                            HStack {
                                ZStack{
                                    Image("Ellipse 24")
                                        .offset(x: geo.size.width * -0.15, y: geo.size.width * 0.07)
                                    Image("regando")
                                }
                                
                                
                                
                                VStack(alignment: .leading, spacing: 16){
                                    (Text(textos.texto8[0].texto).bold())
                                    Text(textos.texto9[0].texto)
                                    Text(textos.texto10[0].texto)
                                }
                                .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                                .padding(.horizontal, 40)
                            }
                            .padding(.top, geo.size.width * 0.04)
                            .padding(.horizontal, geo.size.width * 0.06)
                            Text(textos.texto11[0].texto)
                                .font(
                                    .custom("creatoDisplay-regular",size: 20,relativeTo: .body))
                                .multilineTextAlignment(.leading)
                                .frame(
                                    maxWidth: geo.size.width * 0.85,
                                    alignment: .leading
                                )
                                .padding(.horizontal, geo.size.width * 0.06)
                                .padding(.top, geo.size.height * 0.05)

                            
                            
                            HStack{
                                
                                HStack{
                                    
                                    VStack(alignment: .leading, spacing: 16) {
                                        
                                        Text(textos.texto12[0].texto)
                                        
                                            .bold()
                                        
                                        Text(textos.texto13[0].texto)
                                        
                                    }
                                    .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                                    .frame(maxWidth: geo.size.width * 0.35,maxHeight: .infinity,alignment: .leading)
                                    .padding(.trailing, geo.size.width * 0.15)
                                    
                                   Spacer()
                                    
                                    ZStack {
                                        
                                        Image("Ellipse 21")
                                        
                                            .offset(x: geo.size.width * 0.10, y: geo.size.width * -0.1)
                                        
                                        Image("Ellipse 22")
                                        
                                            .offset(x: geo.size.width * -0.10, y: geo.size.height * 0.18)
                                        
                                        Image("girassoltempo")
                                        
                                            .resizable()
                                        
                                            .scaledToFit()
                                        
                                            .frame(width: imagemSize)
                                        
                                    }
                                    
                                }
                                .padding(.top, geo.size.height * 0.08)
                                .padding(.horizontal,geo.size.width * 0.08)
                            }
                            .padding(.bottom, geo.size.width * 0.06)
                            VStack(alignment: .leading, spacing: 10){
                                Text(textos.texto14[0].texto)
                                    .bold()

                                Text(textos.texto15[0].texto)

                                Text(textos.texto16[0].texto)

                                Text(textos.texto17[0].texto)

                                Text(textos.texto18[0].texto)

                                Text(textos.texto19[0].texto)

                            }
                            
                            .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                            
                            
                            Image("FungicidaImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 950 , height: 630)
                                .padding(.top, geo.size.height * 0.05)
                        }
                    }
                    .onAppear {
                        
                        UIScrollView.appearance().bounces = false
                        
                    }
                    .ignoresSafeArea()
                    
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
            }
        }
    }
}

#Preview {
    CuriosidadesExternoIpad()
}
