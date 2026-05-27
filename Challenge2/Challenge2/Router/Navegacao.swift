//
//  Navegacao.swift
//  Challenge2
//
//  Created by Pedro Canute on 25/05/26.
//
import SwiftUI

enum RotaApp: Hashable {
	case escolherPlanta
	case escolherAmbiente
	case curiosidades
	case simulador
	case semPlanta
}

struct Navegacao: View {
	@State var path: [RotaApp] = []
	var body: some View{
		NavigationStack(path: $path) {
			EscolherPlantaView(path: $path)
				.navigationDestination(for: RotaApp.self) { rota in
					switch rota {
					case .escolherPlanta:
						EscolherPlantaView(path: $path)
					case .escolherAmbiente:
						EscolherAmbienteIphoneView()
					}
					
				}
		}
	}
}
