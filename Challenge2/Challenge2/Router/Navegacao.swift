//
//  Navegacao.swift
//  Challenge2
//
//  Created by Pedro Canute on 25/05/26.
//
import SwiftUI

enum RotaApp: Hashable {
	case escolherAmbiente
	case curiosidades(interno: Bool)
	case simulador(interno: Bool)
	case semPlanta
}

struct Navegacao: View {
	
	@State private var path: [RotaApp] = []
	
	var body: some View {
		NavigationStack(path: $path) {
			EscolherPlantaView(path: $path)
				.navigationDestination(for: RotaApp.self) { rota in
					switch rota {
					case .escolherAmbiente:
						EscolherAmbienteView(path: $path)
						
					case .curiosidades(let interno):
						CuriosidadesView(path: $path, interno: interno)
						
					case .simulador(let interno):
						SimuladorView(path: $path, interno: interno)
						
					case .semPlanta:
						SemPlantaView(path: $path)
					}
				}
		}
	}
}
