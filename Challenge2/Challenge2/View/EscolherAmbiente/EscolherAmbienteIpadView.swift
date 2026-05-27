//
//  EscolherAmbienteView.swift
//  Challenge2
//
//  Created by Pedro Canute on 18/05/26.
//

import SwiftUI

struct EscolherAmbienteIpadView: View {
	@Binding var path: [RotaApp]
    @State private var ambienteSelecionado: String?

    var body: some View {

        GeometryReader { geo in

            let modoPaisagem = geo.size.width > geo.size.height

            let titulo = geo.size.width * 0.04
            let texto = geo.size.width * 0.025
            let larguraTexto = geo.size.width * 0.5

            ZStack(alignment: .topTrailing) {
                Image("Vector 35")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geo.size.width * 0.22)
                    .ignoresSafeArea()
                    .offset(x: geo.size.width * 0.02,y: -geo.size.height * 0.02)

                VStack {
                    Spacer()
                    Text("Escolha do ambiente")
                        .font(.custom("Lalezar-Regular", size: titulo))
                        .foregroundColor(.corFonteVerdeEscuro)
                        .padding(.bottom,geo.size.width *  0.040)
                    VStack{
                        Text("Em qual ambiente gostaria de ver o seu Girassol?")
                            .font(.custom("CreatoDisplay-regular", size: texto))
                            .foregroundColor(.corFonteVerdeEscuro)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                            .frame(width: larguraTexto)
                    }
                    .padding(.bottom, geo.size.width * 0.050)

                    if modoPaisagem {
                        Spacer()
                        HStack(spacing: geo.size.width * 0.035) {
                            BotaoEscolherAmbienteHorizontalView(
                                botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0],
                                ambienteSelecionado: $ambienteSelecionado)

                            BotaoEscolherAmbienteHorizontalView(
                                botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1],
                                ambienteSelecionado: $ambienteSelecionado)
                        }
                        .padding(.bottom, geo.size.width * 0.070)
                    } else {
                        VStack(spacing: 30) {
                            BotaoEscolherAmbienteView(
                                botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[0],
                                ambienteSelecionado: $ambienteSelecionado)
                            .frame(width: geo.size.width * 0.70)
                            .frame(height: geo.size.width * 0.80 * (180 / 323))
                            .padding(.bottom, geo.size.width * -0.03)

                            BotaoEscolherAmbienteView(
                                botao: BotaoEscolherAmbienteViewModel.botaoAmbiente[1],
                                ambienteSelecionado: $ambienteSelecionado)
                            .frame(width: geo.size.width * 0.70)
                            .frame(height: geo.size.width * 0.80 * (180 / 323))
                        }
                    }
                    Spacer()
                    BotaoPrincipalView()
                        .frame(width: geo.size.width * 0.4)
                        .disabled(ambienteSelecionado == nil)
                        .padding(.bottom, 40)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .background(Color.corFundoBege)
        }
    }
}

#Preview {
    EscolherAmbienteIpadView()
}
