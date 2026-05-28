//
//  StatusSolViewModel.swift
//  Challenge2
//
//  Created by Pedro Canute on 21/05/26.
//
import SwiftUI

enum TipoAlertaPlanta {
	case fungo
	case excessoFungicida
	case nenhum
}

@Observable
class PlantaViewModel {
	var agua: Double = 250.0
	var qtdFungicida: Double = 0.0
	var sol: Double = 3
	var temFungo: Bool = false
	var excessoFungicida: Bool = false
	
	var planta = PlantaModel()
	
	var imagemGirassolExterna: String {
		planta.imagemGirassolExterna
	}
	var imagemGirassolInterna: String {
		planta.imagemGirassolInterna
	}
	var imagemAmbienteExternaIPad: String {
		planta.imagemExternaIPad
	}
	
	var imagemAmbienteExterna: String {
		planta.imagemExterna
	}
	
	var imagemAmbienteInterna: String {
		planta.imagemInterna
	}
	var imagemAmbienteInternaIPad: String {
		planta.imagemInternaIPad
	}
	
	var alertaAtual: TipoAlertaPlanta {
		if excessoFungicida {
			return .excessoFungicida
		}
		
		if temFungo {
			return .fungo
		}
		
		return .nenhum
	}
	
	func atualizarImagemExterna() {
		atualizarStatusSol()
		atualizarFungo(ambienteInterno: false)
		atualizarFungicida()
		planta.statusExterno = calcularStatusPlanta(ambienteInterno: false)
	}
	
	func atualizarImagemInterna() {
		atualizarStatusSol()
		atualizarFungo(ambienteInterno: true)
		atualizarFungicida()
		planta.statusInterno = calcularStatusPlanta(ambienteInterno: true)
	}
	
	func atualizarStatusSol() {
		if sol == 3 {
			planta.statusSol = .ensolarado
		} else if sol == 2 {
			planta.statusSol = .meiaSombra
		} else {
			planta.statusSol = .sombra
		}
	}
	
	func atualizarFungo(ambienteInterno: Bool) {
		if ambienteInterno {
			temFungo = agua >= 800 && sol <= 2
		} else {
			temFungo = agua >= 800 && sol <= 2
		}
	}
	
	func atualizarFungicida() {
		excessoFungicida = qtdFungicida == 50
	}
	
	func calcularStatusPlanta(ambienteInterno: Bool) -> StatusPlanta {
		if agua == 0 {
			return .morta
		}
		
		if qtdFungicida == 50 {
			return .mortaFungicida
		}
		
		if temFungo && qtdFungicida == 0 {
			return .morrendoFungo
		}
		
		if temFungo && qtdFungicida == 25 {
			return .fraca
		}
		
		var estresse = 0
		
		if agua == 200 {
			estresse += 1
		} else if agua == 400 || agua == 600 {
			estresse += 0
		} else if agua >= 800 {
			estresse += 2
		}
		
		if sol == 3 {
			estresse += 0
		} else if sol == 2 {
			estresse += 1
		} else if sol == 1 {
			estresse += 2
		}
		
		if ambienteInterno && sol < 3 {
			estresse += 1
		}
		
		if estresse == 0 {
			return .saudavel
		} else if estresse == 1 {
			return .normal
		} else if estresse == 2 {
			return .fraca
		} else if estresse == 3 {
			return .morrendo
		} else {
			return .morta
		}
	}
	
}
