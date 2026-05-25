//
//  PlantaModel.swift
//  Challenge2
//
//  Created by Pedro Canute on 22/05/26.
//

enum StatusPlanta {
	case saudavel, normal, fraca, morrendo, morta
	
}

enum StatusSol {
	case ensolarado, meiaSombra, sombra
}

struct PlantaModel {
	var statusExterno: StatusPlanta = .saudavel
	var statusInterno: StatusPlanta = .saudavel
	var statusSol: StatusSol = .ensolarado
	
	var imagemExterna: String {
		switch statusSol {
		case .ensolarado:
			return "imgEnsolarado"
		case .meiaSombra:
			return "imgMeiaSombra"
		case .sombra:
			return "imgSombra"
		}
	}
	
	
	
	var imagemInterna: String {
		switch statusSol {
		case .ensolarado:
			return "imgInternoEnsolarado"
		case .meiaSombra:
			return "imgInternoMeiaSombra"
		case .sombra:
			return "imgInternoSombra"
		}
	}
	
	var imagemGirassolExterna: String  {
		switch statusExterno {
			
		case .saudavel:
			return "Girassol01"
		case .normal:
			return "Girassol02"
		case .fraca:
			return "Girassol03"
		case .morrendo:
			return "Girassol04"
		case . morta:
			return "Girassol05"
		}
	}
	
	var imagemGirassolInterna: String  {
		switch statusExterno {
			
		case .saudavel:
			return "Vaso01"
		case .normal:
			return "Vaso02"
		case .fraca:
			return "Vaso03"
		case .morrendo:
			return "Vaso04"
		case .morta:
			return "Vaso05"
		}
	}
}
