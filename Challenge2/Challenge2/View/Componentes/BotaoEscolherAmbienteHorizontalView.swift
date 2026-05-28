import SwiftUI

struct BotaoEscolherAmbienteHorizontalView: View {

	var botao: BotaoEscolherAmbienteModel

	@Binding var ambienteSelecionado: String?

	var body: some View {

		GeometryReader { geo in

			let largura = geo.size.width
			let altura = geo.size.height

			let textoSize = largura * 0.06

			let selecionado =
			ambienteSelecionado == botao.texto

			ZStack(alignment: .topTrailing) {

				Image(botao.img)
					.resizable()
					.scaledToFill()
					.frame(width: largura, height: altura)
					.clipped()
					.cornerRadius(
						geo.size.width * 0.068
					)

				VStack {

					Spacer()

					Text(botao.texto)
						.font(
							.custom(
								"Lalezar-Regular",
								size: textoSize
							)
						)

						.foregroundColor(.white)

						.frame(maxWidth: .infinity)

						.padding(
							.bottom,
							altura * 0.03
						)
				}
			}

			

			.onTapGesture {

				ambienteSelecionado =
				ambienteSelecionado == botao.texto
				? nil
				: botao.texto
			}
		}

		.frame(width: 500, height: 280)
	}
}

#Preview {

	@Previewable @State var ambienteSelecionado: String?

	VStack {

		BotaoEscolherAmbienteHorizontalView(
			botao:
				BotaoEscolherAmbienteViewModel
				.botaoAmbiente[0],

			ambienteSelecionado:
				$ambienteSelecionado
		)

		Spacer()

		BotaoEscolherAmbienteHorizontalView(
			botao:
				BotaoEscolherAmbienteViewModel
				.botaoAmbiente[1],

			ambienteSelecionado:
				$ambienteSelecionado
		)
	}
}
