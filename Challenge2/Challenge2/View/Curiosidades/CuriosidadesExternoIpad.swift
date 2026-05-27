//
//  CuriosidadesExternoIpad.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 21/05/26.
//

import SwiftUI


struct CuriosidadesExternoIpad: View {
	@Binding var path: [RotaApp]
    @StateObject private var pesquisaExteno = FAQVCuriosidadeExternoViewModel()
    
    @Environment(\.horizontalSizeClass) var tamanhoHorizontal
    
    @Environment(\.verticalSizeClass) var tamanhoVertical
    
    @StateObject private var textos = CuriosidadesViewModel()
    
    
    var body: some View {
        GeometryReader{ geo in
            
            let noIPad = tamanhoHorizontal == .regular
            
            let modoPaisagem = geo.size.width > geo.size.height
            
            let tituloSize = noIPad ? 50 : 35.0
            
            
            
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
								Text("Girassol Interno")
								
							}
							.font(.custom("lalezar-regular", size: 50, relativeTo: .title3))
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
                                    Image("Ellipse 30")
                                        .offset(x: geo.size.width * -0.21, y: geo.size.width * 0.08)
                                    Image("regando 1")
                                        .resizable()
                                        .scaledToFit()
                                        
                                }
                                
                                Spacer()
                                
                                VStack(alignment: .leading, spacing: 20){
                                    (Text(textos.texto8[0].texto).bold())
                                    Text(textos.texto9[0].texto)
                                    Text(textos.texto10[0].texto)
                                }
                                .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                                
                                .padding(.horizontal, geo.size.width * 0.02)
                            }
                            
                            .padding(.top, geo.size.width * 0.04)
                            .padding(.horizontal, geo.size.width * 0.09)
                            
                            VStack{
                                Text(textos.texto11[0].texto)
                                    .font(
                                        .custom("creatoDisplay-regular",size: 21,relativeTo: .body))
                                    

                            }
                            
                            .padding(.top, geo.size.height * 0.02)
                            .padding(.horizontal, geo.size.width * 0.09)
                            
                            HStack(alignment: .center) {

                                VStack(alignment: .leading) {

                                    Text(textos.texto12[0].texto)
                                        .bold()
                                        .frame(maxWidth: .infinity, alignment: .leading)

                                    Text(textos.texto13[0].texto)
                                        .multilineTextAlignment(.leading)
                                        .fixedSize(horizontal: false, vertical: true)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.top, geo.size.width * 0.02)

                                }
                                .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                ZStack {

                                    Image("Ellipse 21")
                                        .offset(x: geo.size.width * 0.20, y: geo.size.width * -0.08)

                                    Image("Ellipse 22")
                                        .offset(x: geo.size.width * -0.14, y: geo.size.height * 0.14)

                                    Image("girassoltempo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width * 0.45)

                                }

                            }
                            .padding(.horizontal, geo.size.width * 0.095)
                            .padding(.top, geo.size.height * 0.1)
                            .padding(.bottom, geo.size.width * 0.06)
                            VStack(alignment: .leading, spacing: 10) {

                                Text(textos.texto14[0].texto)

                                    .bold()

                                Text(textos.texto15[0].texto)

                                Text(textos.texto16[0].texto)

                                Text(textos.texto17[0].texto)

                                Text(textos.texto18[0].texto)

                                Text(textos.texto19[0].texto)

                            }

                            .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))

                            .frame(maxWidth: .infinity, alignment: .leading)

                            .padding(.horizontal, geo.size.width * 0.095)

                            Image("FungicidaImage")

                                .resizable()

                                .scaledToFit()

                                .frame(maxWidth: geo.size.width * 0.83)

                                .padding(.top, geo.size.height * 0.05)
                        }
                        
                    }
                    .onAppear {
                        
                        UIScrollView.appearance().bounces = false
                        
                    }
                    .ignoresSafeArea()
                    
                }
				.environment(\.colorScheme, .light)
            }else{
                ZStack{
                    
                    Color.corFundoBege
                    
                        .ignoresSafeArea()
                    ScrollView(.vertical){
                        VStack{
                            VStack{
                                
                                Image("Vector 35")
                                    .ignoresSafeArea()
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                            }
							VStack{
								Text("Curiosidades do ")
									.padding(.bottom, -50)
								Text("Girassol Interno")
								
							}
							.font(.custom("lalezar-regular", size: 50, relativeTo: .title3))
							.multilineTextAlignment(.center)
							.lineSpacing(10)
							.foregroundStyle(Color.corFonteVerdeEscuro)
							.padding(.top, -60)
                            
                            HStack{
                                ZStack{
                                    Image("Ellipse 20")
                                        .offset(x: geo.size.width * 0.25)
                                    Image("Ellipse 10")
                                        .offset(x: geo.size.width * -0.25, y: geo.size.height * 0.05)
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
                            .padding(.bottom, geo.size.width * 0.04)
                            
                            Image("muitosGirassois")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.84, height: geo.size.width * 0.630)
                                .padding(.vertical, geo.size.height * -0.07)
                                
                            
                            
                            VStack(alignment: .leading, spacing: 20) {

                                Text(textos.texto5[0].texto)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                Text(textos.texto6[0].texto)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                                Text(textos.texto7[0].texto)
                                    .frame(maxWidth: .infinity, alignment: .leading)

                            }
                            .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, geo.size.width * 0.03)
                            .padding(.horizontal, geo.size.width * 0.09)
                            
                            HStack(alignment: .center, spacing: geo.size.width * 0.08) {

                                ZStack {

                                    Image("Ellipse 30")
                                        .resizable()
                                        .scaledToFit()
                                        
                                        .offset(
                                            x: geo.size.width * -0.12,
                                            y: geo.size.width * 0.05
                                        )

                                    Image("regando")
                                        .resizable()
                                        .scaledToFit()
                                        

                                }
                                .frame(maxWidth: geo.size.width * 0.42)

                                VStack(alignment: .leading, spacing: 20) {

                                    Text(textos.texto8[0].texto)
                                        .bold()

                                    Text(textos.texto9[0].texto)

                                    Text(textos.texto10[0].texto)

                                }
                                .font(
                                    .custom(
                                        "creatoDisplay-regular",
                                        size: 20,
                                        relativeTo: .body
                                    )
                                )
                                .multilineTextAlignment(.leading)
                                .fixedSize(horizontal: false, vertical: true)
                                .frame(
                                    maxWidth: .infinity,
                                    alignment: .leading
                                )

                            }
                            .padding(.top, geo.size.width * 0.04)
                            .padding(.horizontal, geo.size.width * 0.09)
                            
                            VStack{
                                Text(textos.texto11[0].texto)
                                    .font(
                                        .custom("creatoDisplay-regular",size: 21,relativeTo: .body))
                                    

                            }
                            
                            .padding(.top, geo.size.height * 0.04)
                            .padding(.horizontal, geo.size.width * 0.09)
                            
                            HStack{
                                
                                HStack{
                                    
                                    VStack(alignment: .leading, spacing: 16) {
                                        
                                        Text(textos.texto12[0].texto)
                                        
                                            .bold()
                                        
                                        Text(textos.texto20[0].texto)
                                            
                                    }
                                    
                                    .font(.custom("creatoDisplay-regular", size: 20, relativeTo: .body))
                                    
                                   
                                    Spacer()
                                    
                                  
                                    
                                    ZStack {
                                        
                                        Image("Ellipse 21")
                                        
                                            .offset(x: geo.size.width * 0.16, y: geo.size.width * -0.09)
                                        
                                        Image("Ellipse 22")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: geo.size.width * 0.35)
                                            .offset(x: geo.size.width * -0.03, y: geo.size.height * 0.12)
    
                                        Image("girassoltempoiphone")
                                        
                                            .resizable()
                                            .scaledToFit()
                                            
                                    }
                                    
                                }
                                .padding(.top, geo.size.height * 0.08)
                                .padding(.horizontal,geo.size.width * 0.09)
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
                            .padding(.horizontal,geo.size.width * 0.07)
                            
                            
                            Image("FungicidaImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width * 0.83, height: geo.size.width * 0.630)
                                .padding(.vertical, geo.size.height * -0.07)
                                .padding(.top, geo.size.height * 0.05)
                        }
                        
                    }
                    .onAppear {
                        
                        UIScrollView.appearance().bounces = false
                        
                    }
                    .ignoresSafeArea()
                    
                }
				.environment(\.colorScheme, .light)
            }
        }
    }
}

#Preview {
    CuriosidadesExternoIpad()
}
