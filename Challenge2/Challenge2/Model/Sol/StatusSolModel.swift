//
//  StatusSolModel.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
enum StatusSol {
	
	case ensolarado, meiaSombra, sombra

	var texto: String {
		switch self {
		case .ensolarado:
			return "Ensolarado"
		case .meiaSombra:
			return "Meia-Sombra"
		case .sombra:
			return "Sombra"
		}
	}

	var nomeImagem: String {

		switch self {
		case .ensolarado:
			return "imgEnsolarado"
		case .meiaSombra:
			return "imgMeiaSombra"
		case .sombra:
			return "imgSombra"
		}
	}
}
