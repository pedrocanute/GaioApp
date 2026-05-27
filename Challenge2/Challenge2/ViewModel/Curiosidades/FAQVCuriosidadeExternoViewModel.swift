//
//  CuriosidadeExternoViewModel.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 21/05/26.
//
import SwiftUI
import Combine
import Foundation

struct Question: Identifiable {
    let id = UUID()
    let titleTex: String
    let pesquisaTex: String
    let image: String
}

class FAQVCuriosidadeExternoViewModel: ObservableObject {
    @Published var questions: [Question] = [
        Question(titleTex: "O que é um Girassol?", pesquisaTex: "Nome científico: Helianthus annuus Nome que vem do grego e significa “flor do sol”.\n\nSeu ciclo de vida é estritamente anual. Isso significa que a planta possui apenas uma estação de crescimento para realizar todo o seu desenvolvimento: germinar, crescer, florescer e produzir novas sementes.\n\nQuanto tempo dura o girassol?\n O Girassol Helianthus annuus possui um ciclo de vida anual, com duração média de aproximadamente 3 a 5 meses, dependendo das condições de cultivo, clima e variedade. Sua floração geralmente ocorre entre 60 e 90 dias após o plantio, e as flores podem permanecer bonitas e abertas por cerca de 2 a 4 semanas.", image: "GirassolCentral"),
        
        Question(titleTex: "Como cuidar de um Girassol?", pesquisaTex: "Os girassóis não fazem a busca pelo sol; eles permanecem posicionados para o leste durante todo o dia. Portanto, é importante que não haja sombra nessa vindo dessa direção.\n\nA espécie prefere clima quente e seco, solos bem drenados, ricos em matéria orgânica e com boa disponibilidade de nutrientes, além de, no mínimo, 6 horas de sol direto por dia.\n\nJá sobre a manutenção é importante fazer o Estaqueamento.\nAs espécies de girassóis mais altos (mais de 1,5m) exigem suporte (estacas de bambu ou treliças) para não tombarem no chão por serem muito grandes.\nNão se esqueça da remoção das folhas e flores murchas para estimular a planta a produzir novas em vez de gastar energia em semente, assim seu girassol vai parecer sempre grande e bonito.\n\nMas como posso regar?\nRegue com mais frequência quando a planta for jovem, diariamente ou a cada dois dias, e reduza para 2 a 3 vezes por semana quando ela estiver adulta.\nEm períodos de calor intenso, como no verão, o girassol pode precisar de rega diária devido à rápida evaporação da água.\n\nJá em períodos chuvosos, suspenda ou reduza a rega. Como a necessidade de água dessa espécie não é totalmente regular, é importante verificar constantemente o solo. A melhor maneira de saber quando é hora de regar é tocando a terra com o dedo: se os primeiros 2 cm a 5 cm do solo estiverem secos, é hora de regar.", image: "girassoltempoiphone"),
        
        Question(titleTex: "Como utilizar um fungicida?", pesquisaTex: "Alguns pontos importantes:\n\n -Muitos fungicidas podem causar irritação na pele, olhos e vias respiratórias.\n -É recomendado usar luvas, máscara e evitar contato direto.\n -Alguns produtos têm restrições para uso doméstico ou exigem orientação agronômica.\n -Em apartamentos ou ambientes fechados, o uso de fungicidas fortes pode não ser ideal por causa da ventilação.",image: "FungicidaImage"),
    ]
    
   
}

