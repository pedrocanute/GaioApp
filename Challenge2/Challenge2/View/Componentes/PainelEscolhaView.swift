import SwiftUI

struct PainelEscolhaView: View {
	
	@StateObject private var viewModel = PickerViewModel()
	@Binding var path: [RotaApp]
	
	var body: some View {
		ZStack {
			Rectangle()
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.foregroundStyle(.corFundoVerdeEscuro)
				.ignoresSafeArea()
			
			VStack(spacing: 15) {
				Text("Escolha uma planta")
					.font(.custom("Lalezar-Regular", size: 30))
					.foregroundStyle(.white)
				
				ZStack {
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
				
				Button {
					navegarComBaseNaPlanta()
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
	
	func navegarComBaseNaPlanta() {
		switch viewModel.plantaSelecionada.nome {
		case "Girassol":
			path.append(.escolherAmbiente)
			
		case "Planta Carnivora":
			path.append(.semPlanta)
			
		case "Costela-de-Adão":
			path.append(.semPlanta)
			
		default:
			path.append(.semPlanta)
		}
	}
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	
	PainelEscolhaView(path: $path)
}
