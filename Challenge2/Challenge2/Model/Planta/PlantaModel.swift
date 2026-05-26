//
//  PlantaModel.swift
//  Challenge2
//
//  Created by Pedro Canute on 22/05/26.
//

enum StatusPlanta {
	case saudavel, normal, fraca, fracaFungo, morrendo, morrendoFungo, morta, mortaFungicida
	
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
	
	var imagemExternaIPad: String {
		switch statusSol {
		case .ensolarado:
			return "imgEnsolaradoIpad"
		case .meiaSombra:
			return "imgMeiaSombraIpad"
		case .sombra:
			return "imgSombraIpad"
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
	
	var imagemInternaIPad: String {
		switch statusSol {
		case .ensolarado:
			return "imgInternoEnsolaradoIpad"
		case .meiaSombra:
			return "imgInternoMeiaSombraIpad"
		case .sombra:
			return "imgInternoSombraIpad"
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
		case .fracaFungo:
			return "Girassol03Fungo"
		case .morrendo:
			return "Girassol04"
		case .morrendoFungo:
			return "Girassol04Fungo"
		case . morta:
			return "Girassol05"
		case .mortaFungicida:
			return "GirassolFungicida"
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
		case .fracaFungo:
			return "Vaso03Fungo"
		case .morrendo:
			return "Vaso04"
		case .morrendoFungo:
			return "Vaso04Fungicida"
		case .morta:
			return "Vaso05"
		case .mortaFungicida:
			return "VasoFungicida"
		}
	}
}
