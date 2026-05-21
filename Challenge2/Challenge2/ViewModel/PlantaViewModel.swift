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
	
	var imagemGirassol: String {
		if agua < 200 {
			return "Girassol03"
		}
		if agua > 500 {
			return "Girassol03"
		}
		return ""
	}
}
