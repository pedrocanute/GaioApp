//
//  AmbientePlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 25/05/26.
//
import SwiftUI

struct AmbientePlantaView: View {
	let largura: CGFloat
	let altura: CGFloat
	var imagemAmbiente: String
	var imagemGirassol: String
	let interno: Bool
	var modoPaisagem: Bool
	
	
	var body: some View {
		ZStack {
			if modoPaisagem {
				Image(imagemAmbiente)
					.resizable()
					.scaledToFill()
					.frame(width: largura, height: altura * 0.2 )
				
				Image(imagemGirassol)
					.resizable()
					.scaledToFit()
					.frame(height: interno ? altura * 0.35 : altura * 0.5)
					.offset(x: interno ? largura * 0.02 : 0 ,y: interno ? altura * 0.034 : altura * 0.16)
				
			} else {
				
				Image(imagemAmbiente)
					.resizable()
					.scaledToFit()
					.frame(width: largura, height: altura * 0.6)
				
				Image(imagemGirassol)
					.resizable()
					.scaledToFit()
					.frame(height: interno ? altura * 0.35 : altura * 0.28)
					.offset(x: interno ? largura * 0.02 : 0 ,y: interno ? altura * 0.034 : altura * 0.01)
			}
			
		}
		.frame(width: largura, height: altura * 0.42)
	}
}
