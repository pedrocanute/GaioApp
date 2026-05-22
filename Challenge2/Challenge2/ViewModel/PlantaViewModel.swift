//
//  StatusSolViewModel.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
import SwiftUI

@Observable
class PlantaViewModel {
	var agua: Double = 250.0
	var qtdFungicida: Double = 0.0
	var sol: Double = 1
	var temFungo: Bool = false
	
	var planta = PlantaModel()
	
	var imagemGirassol: String {
		planta.imagemExterna
	}
	
	func atualizarImagemExterna() {
		if agua == 200 && sol == 1 {
			planta.statusExterno = .saudavel
		}
		if agua == 400 && sol == 1 || temFungo && agua == 200 && sol == 1 {
			planta.statusExterno = .fraca
		}
		if (agua == 400 && sol == 2) || (agua == 600 && sol > 1) || (temFungo && agua > 200 && sol > 1) {
			planta.statusExterno = .morrendo
		}
		if qtdFungicida == 50 || (agua == 0 || agua == 1000) {
			planta.statusExterno = .morta
		}
		
	}
}
