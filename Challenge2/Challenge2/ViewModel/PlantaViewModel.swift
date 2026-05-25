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
	var sol: Double = 3
	var temFungo: Bool = false
	
	var planta = PlantaModel()
	
	var imagemGirassolExterna: String {
		planta.imagemGirassolExterna
	}
	var imagemGirassolInterna: String {
		planta.imagemGirassolInterna
	}
	var imagemAmbienteExterna: String {
		planta.imagemExterna
	}
	
	var imagemAmbienteInterna: String {
		planta.imagemInterna
	}
	
	func atualizarImagemExterna() {
		
		temFungo = agua == 800 && sol == 1
		
		if sol == 3 {
			planta.statusSol = .ensolarado
		} else if sol == 2 {
			planta.statusSol = .meiaSombra
		} else if sol == 1 {
			planta.statusSol = .sombra
		}
		
		if agua == 0 || agua == 1000 {
			planta.statusExterno = .morta
		} else if temFungo && qtdFungicida == 0 {
			planta.statusExterno = .morta
		} else if temFungo && qtdFungicida == 25 {
			planta.statusExterno = .fraca
		} else if temFungo && qtdFungicida == 50 {
			planta.statusExterno = .morta
		} else if agua == 200 && sol == 3 {
			planta.statusExterno = .saudavel
		} else if agua == 400 {
			if sol == 3 {
				planta.statusExterno = .normal
			} else if sol == 2 {
				planta.statusExterno = .fraca
			} else if sol == 1 {
				planta.statusExterno = .morta
			}
		} else if agua == 600 {
			if sol == 3 {
				planta.statusExterno = .fraca
			} else if sol == 2 {
				planta.statusExterno = .morrendo
			} else if sol == 1 {
				planta.statusExterno = .morta
			}
		} else if agua == 800 {
			planta.statusExterno = .morrendo
		}
	}
	
	func atualizarImagemInterna() {
		
		temFungo = agua == 800 && sol == 1
		
		if sol == 3 {
			planta.statusSol = .ensolarado
		} else if sol == 2 {
			planta.statusSol = .meiaSombra
		} else if sol == 1 {
			planta.statusSol = .sombra
		}
		
		if agua == 0 || agua == 1000 {
			planta.statusInterno = .morta
		} else if temFungo && qtdFungicida == 0 {
			planta.statusInterno = .morta
		} else if temFungo && qtdFungicida == 25 {
			planta.statusInterno = .fraca
		} else if temFungo && qtdFungicida == 50 {
			planta.statusInterno = .morta
		} else if agua == 200 && sol == 3 {
			planta.statusInterno = .saudavel
		} else if agua == 400 {
			if sol == 3 {
				planta.statusInterno = .normal
			} else if sol == 2 {
				planta.statusInterno = .fraca
			} else if sol == 1 {
				planta.statusInterno = .morta
			}
		} else if agua == 600 {
			if sol == 3 {
				planta.statusInterno = .fraca
			} else if sol == 2 {
				planta.statusInterno = .morrendo
			} else if sol == 1 {
				planta.statusInterno = .morta
			}
		} else if agua == 800 {
			planta.statusInterno = .morrendo
		}
	}
}
