//
//  PlantaModel.swift
//  Challenge2
//
//  Created by Pedro Canute on 22/05/26.
//

enum StatusPlanta {
	case saudavel, normal, fraca, morrendo, morta
	
}

struct PlantaModel {
	var statusExterno: StatusPlanta = .saudavel
	
	
	var imagemExterna: String  {
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
	var imagemInterna: String  {
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
