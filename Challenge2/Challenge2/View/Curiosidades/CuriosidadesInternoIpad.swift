//
//  CuriosidadesTextoExternoIpad.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 22/05/26.
//

import SwiftUI

struct CuriosidadesInternoIpad: View {
	@StateObject private var textos = CuriosidadesInternoViewModel()
	
	@StateObject private var textosExterno = CuriosidadesViewModel()
	
	@Environment(\.horizontalSizeClass) var tamanhoHorizontal
	
	@Environment(\.verticalSizeClass) var tamanhoVertical
	var body: some View {
		GeometryReader{ geo in
			let modoPaisagem = geo.size.width > geo.size.height
			
			let texPesquisa = 20.0
			if modoPaisagem {
				
				
				ZStack {
					Color.corFundoBege
						.ignoresSafeArea()
					ScrollView(.vertical){
						VStack{
							HStack{
								Spacer()
								Image("Vector 35")
									.ignoresSafeArea()
							}
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
								Image("girasolCentralInterno")
							}
						}
						.padding(.bottom, geo.size.width * 0.05)
						
						VStack(alignment: .leading, spacing: texPesquisa){
							
							
							Text(
								"Nome científico: \(Text("Helianthus annuus dwarf").bold()) (Girassol-anão)"
							)
							Text(textos.tex1[0].texto)
							
						}
						.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
						.padding(.leading, geo.size.width * 0.11)
						.padding(.trailing, geo.size.width * 0.13)
						.padding(.bottom, geo.size.width * 0.05)
						
						HStack{
							
							Text(textos.tex2[0].texto)
								.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
								.frame(maxWidth: geo.size.width * 0.54,maxHeight: .infinity,alignment: .leading)
								.padding(.leading, geo.size.width * 0.11)
								.padding(.trailing, geo.size.width * 0.15)
							
							ZStack{
								Image("Ellipse 21")
									.offset(x: geo.size.width * 0.01, y: geo.size.width * 0.1)
								
								Image("girasolCresendoInterno")
									.resizable()
									.scaledToFit()
									.frame(width: 500)
									.offset(x: geo.size.width * -0.13, y: geo.size.width * 0.01)
							}
							
						}
						.padding(.bottom, geo.size.width * 0.06)
						
						
						VStack(alignment: .leading, spacing: 10){
							
							Text(textos.tex3[0].texto)
								.font(.custom("creatoDisplay-Bold", size: texPesquisa, relativeTo: .body))
								.padding(.bottom, geo.size.width * 0.01)
							
							
							Text(textos.tex3[1].texto)
								.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							
						}
						.padding(.leading, geo.size.width * 0.11)
						.padding(.trailing, geo.size.width * 0.13)
						.padding(.bottom, geo.size.width * 0.05)
						
						Spacer()
						
						
						VStack(alignment: .leading){
							Text(textos.tex4[0].texto)
								.font(.custom("creatoDisplay-Bold", size: texPesquisa, relativeTo: .body))
							HStack{
								ZStack{
									Image("Ellipse 21")
										.offset(x: geo.size.width * -0.2, y: geo.size.width * -0.1)
									
									Image("GirassolVasoAzulInterno")
										.resizable()
										.scaledToFit()
										.frame(width: 400)
										.offset(x: geo.size.width * -0.01, y: geo.size.width * 0.01)
								}
								Text(textos.tex4[1].texto)
								
							}
							
							.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							
						}
						.padding(.leading, geo.size.width * 0.109)
						.padding(.trailing, geo.size.width * 0.13)
						.padding(.bottom, geo.size.width * 0.05)
						
						
						Text(textos.tex5[0].texto)
							.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							.frame(maxWidth: geo.size.width * 0.74,maxHeight: .infinity,alignment: .leading)
							.padding(.leading, geo.size.width * 0.11)
							.padding(.trailing, geo.size.width * 0.2)
							.padding(.bottom, geo.size.width * 0.05)
						
						
						HStack{
							VStack(alignment: .leading){
								
								Text(textos.tex6[0].texto)
									.font(.custom("creatoDisplay-Bold", size: texPesquisa, relativeTo: .body))
									.padding(.bottom, geo.size.width * 0.01)
								
								Text(textos.tex6[1].texto)
									.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
									.padding(.bottom, geo.size.width * 0.045)
								
								
								Text(textos.tex6[2].texto)
									.font(.custom("creatoDisplay-bold", size: texPesquisa, relativeTo: .body))
							}
							.frame(maxWidth: geo.size.width * 0.54,maxHeight: .infinity,alignment: .leading)
							.padding(.leading, geo.size.width * 0.11)
							.padding(.trailing, geo.size.width * 0.15)
							ZStack{
								Image("Ellipse 21")
									.offset(x: geo.size.width * -0.2, y: geo.size.width * -0.1)
								
								Image("PlantandoGirassolImterno")
									.resizable()
									.scaledToFit()
									.frame(width: 490)
									.offset(x: geo.size.width * -0.13, y: geo.size.width * 0.01)
							}
						}
						.padding(.bottom, geo.size.width * 0.05)
						
						
						Text(textos.tex7[0].texto)
							.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							.frame(maxWidth: geo.size.width * 0.74,maxHeight: .infinity,alignment: .leading)
							.padding(.leading, geo.size.width * 0.11)
							.padding(.trailing, geo.size.width * 0.2)
							.padding(.bottom, geo.size.width * 0.05)
						
						VStack(alignment: .leading, spacing: 10){
							Text(textosExterno.texto14[0].texto)
								.bold()
								.padding(.bottom, geo.size.width * 0.01)
							Text(textosExterno.texto15[0].texto)
							
							Text(textosExterno.texto16[0].texto)
							
							Text(textosExterno.texto17[0].texto)
							
							Text(textosExterno.texto18[0].texto)
							
							Text(textosExterno.texto19[0].texto)
							
						}
						.padding(.leading, geo.size.width * 0.05)
						.padding(.trailing, geo.size.width * 0.2)
						
						.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
						.padding(.horizontal, geo.size.width * 0.04)
						
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
				.environment(\.colorScheme, .light)

			}else{
				ZStack {
					Color.corFundoBege
						.ignoresSafeArea()
					ScrollView(.vertical){
						VStack{
							HStack{
								Spacer()
								Image("Vector 35")
									.ignoresSafeArea()
							}
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
									.offset(x: geo.size.width * 0.2, y: geo.size.height * -0.1)
								Image("Ellipse 10")
									.offset(x: geo.size.width * -0.2, y: geo.size.height * 0.05)
								Image("girasolCentralInterno")
							}
						}
						.padding(.bottom, geo.size.width * 0.05)
						
						VStack(alignment: .leading, spacing: texPesquisa){
							
							
							Text(
								"Nome científico: \(Text("Helianthus annuus dwarf").bold()) (Girassol-anão)"
							)
							Text(textos.tex1[0].texto)
							
						}
						.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
						.padding(.leading, geo.size.width * 0.08)
						.padding(.trailing, geo.size.width * 0.12)
						.padding(.bottom, geo.size.width * 0.05)
						
						HStack{
							
							Text(textos.tex2[0].texto)
								.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
								.frame(maxWidth: geo.size.width * 0.54,maxHeight: .infinity,alignment: .leading)
								.padding(.leading, geo.size.width * 0.08)
								.padding(.trailing, geo.size.width * 0.1)
							
							ZStack{
								Image("Ellipse 21")
									.offset(x: geo.size.width * 0.1, y: geo.size.width * 0.1)
								
								Image("girasolCresendoInterno")
									.resizable()
									.scaledToFit()
									.frame(width: 390)
									.offset(x: geo.size.width * -0.08, y: geo.size.width * 0.01)
							}
							
						}
						.padding(.bottom, geo.size.width * 0.06)
						
						
						VStack(alignment: .leading, spacing: 10){
							
							Text(textos.tex3[0].texto)
								.font(.custom("creatoDisplay-Bold", size: texPesquisa, relativeTo: .body))
								.padding(.bottom, geo.size.width * 0.01)
							
							
							Text(textos.tex3[1].texto)
								.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							
						}
						.padding(.leading, geo.size.width * 0.08)
						.padding(.trailing, geo.size.width * 0.12)
						.padding(.bottom, geo.size.width * 0.05)
						
						Spacer()
						
						
						VStack(alignment: .leading){
							Text(textos.tex4[0].texto)
								.font(.custom("creatoDisplay-Bold", size: texPesquisa, relativeTo: .body))
								.padding(.bottom, geo.size.width * 0.02)
							HStack{
								ZStack{
									Image("Ellipse 21")
										.offset(x: geo.size.width * -0.2, y: geo.size.width * 0.1)
									
									Image("GirassolVasoAzulInterno")
										.resizable()
										.scaledToFit()
										.frame(width: 340)
										.offset(x: geo.size.width * -0.01, y: geo.size.width * 0.01)
								}
								Text(textos.tex4[1].texto)
									.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
								
							}
							
							
						}
						.padding(.leading, geo.size.width * 0.08)
						.padding(.trailing, geo.size.width * 0.12)
						.padding(.bottom, geo.size.width * 0.05)
						
						
						Text(textos.tex5[0].texto)
							.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							.frame(maxWidth: geo.size.width * 0.74,maxHeight: .infinity,alignment: .leading)
							.padding(.leading, geo.size.width * 0.08)
							.padding(.trailing, geo.size.width * 0.12)
							.padding(.bottom, geo.size.width * 0.05)
						
						
						HStack{
							VStack(alignment: .leading){
								
								Text(textos.tex6[0].texto)
									.font(.custom("creatoDisplay-Bold", size: texPesquisa, relativeTo: .body))
									.padding(.bottom, geo.size.width * 0.01)
								
								Text(textos.tex6[1].texto)
									.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
									.padding(.bottom, geo.size.width * 0.045)
								
								
								Text(textos.tex6[2].texto)
									.font(.custom("creatoDisplay-bold", size: texPesquisa, relativeTo: .body))
							}
							.frame(maxWidth: geo.size.width * 0.54,maxHeight: .infinity,alignment: .leading)
							.padding(.leading, geo.size.width * 0.08)
							.padding(.trailing, geo.size.width * 0.1)
							ZStack{
								Image("Ellipse 21")
									.offset(x: geo.size.width * 0.12, y: geo.size.width * -0.1)
								
								Image("PlantandoGirassolImterno")
									.resizable()
									.scaledToFit()
									.frame(width: 390)
									.offset(x: geo.size.width * -0.08, y: geo.size.width * 0.01)
							}
						}
						.padding(.bottom, geo.size.width * 0.05)
						
						
						Text(textos.tex7[0].texto)
							.font(.custom("creatoDisplay-regular", size: texPesquisa, relativeTo: .body))
							.padding(.leading, geo.size.width * 0.08)
							.padding(.trailing, geo.size.width * 0.12)
							.padding(.bottom, geo.size.width * 0.05)
						
						
						VStack(alignment: .leading, spacing: 10){
							Text(textosExterno.texto14[0].texto)
								.bold()
							
							Text(textosExterno.texto15[0].texto)
							
							Text(textosExterno.texto16[0].texto)
							
							Text(textosExterno.texto17[0].texto)
							
							Text(textosExterno.texto18[0].texto)
							
							Text(textosExterno.texto19[0].texto)
							
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
				.environment(\.colorScheme, .light)
				.onAppear {
					
					UIScrollView.appearance().bounces = false
					
				}
				.ignoresSafeArea()
				
			}
		}
	}
}


#Preview {
	CuriosidadesInternoIpad()
}
