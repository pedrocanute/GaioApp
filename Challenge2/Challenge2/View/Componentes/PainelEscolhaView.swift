import SwiftUI

struct PainelEscolhaView: View {
	@Binding var path: [RotaApp]

	@State private var plantaSelecionada = PlantasData.plantas[0]

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

					PlantaPickerView(plantaSelecionada: $plantaSelecionada)
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
		switch plantaSelecionada.tipo {
		case .girassol:
			path.append(.escolherAmbiente)

		case .plantaCarnivora, .costelaDeAdao:
			path.append(.semPlanta)
		}
	}
}

#Preview {
	@Previewable @State var path: [RotaApp] = []
	PainelEscolhaView(path: $path)
}
