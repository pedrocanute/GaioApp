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
			if modoPaisagem && interno {
				Image(imagemAmbiente)
					.resizable()
					.scaledToFill()
					.frame(width: largura, height: altura * 0.9)
					.id(imagemAmbiente)
					.offset(y:80)
			} else {
				
				Image(imagemAmbiente)
					.resizable()
					.scaledToFill()
					.frame(width: largura, height: altura * 0.9)
					.id(imagemAmbiente)
			}
			
			Image(imagemGirassol)
				.resizable()
				.scaledToFit()
				.frame(height: alturaGirassol)
				.offset(x: offsetXGirassol, y: offsetYGirassol)
				.id(imagemGirassol)

			
			if mostrarAlertaFungo {
				AlertaFungoView(iPad: iPad)
					.position(x: posicaoXAlertaFungo, y: posicaoYAlertaFungo)
					.transition(.scale.combined(with: .opacity))
			}
		}
		.frame(width: largura, height: altura)
		.clipped()
		}
	
	var alturaGirassol: CGFloat {
		if modoPaisagem {
			return interno ? altura * 0.85 : altura * 0.6
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
			return interno ? altura * 0.18 : altura * 0.15
		} else if iPad {
			return interno ? altura * 0.10 : altura * 0.09
		} else {
			return interno ? altura * 0.08 : altura * 0.08
		}
		
	}
	
	var posicaoXAlertaFungo: CGFloat {
		let centroGirassolX = largura / 2 + offsetXGirassol
		
		if iPad {
			return centroGirassolX + largura * 0.10
		} else {
			return centroGirassolX + largura * 0.12
		}
	}

	var posicaoYAlertaFungo: CGFloat {
		let centroGirassolY = altura / 2 + offsetYGirassol
		
		if modoPaisagem {
			return centroGirassolY - alturaGirassol * 0.35
		} else if iPad {
			return centroGirassolY - alturaGirassol * 0.32
		} else {
			return centroGirassolY - alturaGirassol * 0.40
		}
	}
}

