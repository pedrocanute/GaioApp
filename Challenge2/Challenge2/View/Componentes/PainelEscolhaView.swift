//
//  EscolhaUmaPlantaView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//
import SwiftUI

struct PainelEscolhaView<Destino: View>: View {
    @StateObject var viewModel = PickerViewModel()
    
       @State private var navigate = false
	let destino: Destino
	var body: some View {
		ZStack{
			Rectangle()
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.foregroundStyle(.corFundoVerdeEscuro)
				.ignoresSafeArea()
			
			VStack(spacing: 15){
				Text("Escolha uma planta")
					.font(.custom("Lalezar-Regular", size: 30))
					.foregroundStyle(.white)
				ZStack{
					Rectangle()
					.foregroundColor(.clear)
					.frame(width: 198, height: 33)
					.overlay(
						RoundedRectangle(cornerRadius: 20)
						.inset(by: 0.5)
						.stroke(.white, lineWidth: 1)
					)
					
					PlantaPickerView()
						.frame(width: 220)
				}
				
				NavigationLink {
                    switch viewModel.plantaSelecionada.nome {
                    case "Girassol":
                        EscolherAmbienteView()
                    case "Planta Carnivora":
                        EscolherPlantaView()
                    case "Costela-de-Adão":
                        EscolherPlantaView()
                    default:
                        EscolherPlantaView()
                    }
				} label: {
					BotaoPrincipalView(textoBotao: "Confirmar")
						.frame(width: 209)
				}
				.buttonStyle(.plain)
				
					
			}
			.frame(maxWidth: .infinity)
			.frame(height: 200)
		}
	}
}

#Preview {
//	PainelEscolhaView(destino: <#Destino#>)
		
}
