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
	let iPad: Bool
	let mostrarAlertaFungo: Bool
	
	
	var body: some View {
		
		ZStack {
			Image(imagemAmbiente)
				.resizable()
				.scaledToFit()
				.frame(width: largura, height: altura * 1.4)
			
			
			Image(imagemGirassol)
				.resizable()
				.scaledToFit()
				.frame(height: alturaGirassol)
				.offset(x: offsetXGirassol, y: offsetYGirassol)
				
			
			if mostrarAlertaFungo {
				AlertaFungoView(iPad: iPad ? true : false)
					.position(x: largura * 0.55, y: altura * 0.45)
					.transition(.scale.combined(with: .opacity))
			}
			
		}
		.frame(width: largura, height: altura)
		.clipped()
		}
	
	var alturaGirassol: CGFloat {
		if modoPaisagem {
			return interno ? altura * 0.65 : altura * 0.6
		} else if iPad {
			return interno ? altura * 0.9 : altura * 0.75
		} else {
			return interno ? altura * 0.9 : altura * 0.70
		}
	}
	
	var offsetXGirassol: CGFloat {
		interno ? largura * 0.02 : 0
	}
	
	var offsetYGirassol: CGFloat {
		if modoPaisagem {
			return interno ? altura * 0.04 : altura * 0.15
		} else if iPad {
			return interno ? altura * 0.10 : altura * 0.09
		} else {
			return interno ? altura * 0.08 : altura * 0.05
		}
		
	}
}

