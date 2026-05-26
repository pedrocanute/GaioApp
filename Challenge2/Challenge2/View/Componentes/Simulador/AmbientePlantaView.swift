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
				.scaledToFill()
				.frame(width: largura, height: altura * 0.9)
				.id(imagemAmbiente)
				.transition(.opacity)
			
			Image(imagemGirassol)
				.resizable()
				.scaledToFit()
				.frame(height: alturaGirassol)
				.offset(x: offsetXGirassol, y: offsetYGirassol)
				.id(imagemGirassol)
				.transition(.opacity.combined(with: .scale(scale: 0.98)))
			
			if mostrarAlertaFungo {
				AlertaFungoView(iPad: iPad)
					.position(x: largura * 0.55, y: altura * 0.45)
					.transition(.scale.combined(with: .opacity))
			}
		}
		.frame(width: largura, height: altura)
		.clipped()
		.animation(.snappy(duration: 0.35), value: imagemGirassol)
		.animation(.smooth(duration: 0.35), value: imagemAmbiente)
			
		}
	
	var alturaGirassol: CGFloat {
		if modoPaisagem {
			return interno ? altura * 0.65 : altura * 0.6
		} else if iPad {
			return interno ? altura * 0.9 : altura * 0.75
		} else {
			return interno ? altura * 0.9 : altura * 0.8
		}
	}
	
	var offsetXGirassol: CGFloat {
		interno ? largura * 0.02 : 0
	}
	
	var offsetYGirassol: CGFloat {
		if modoPaisagem {
			return interno ? altura * 0.13 : altura * 0.15
		} else if iPad {
			return interno ? altura * 0.10 : altura * 0.09
		} else {
			return interno ? altura * 0.08 : altura * 0.08
		}
		
	}
}

