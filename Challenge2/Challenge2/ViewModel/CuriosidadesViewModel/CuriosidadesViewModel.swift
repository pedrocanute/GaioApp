//
//  CuriosidadesViewModel.swift
//  Challenge2
//
//  Created by Guilherme Alves de Souza on 22/05/26.
//

import SwiftUI
import Combine

class CuriosidadesViewModel : ObservableObject {
    @Published  var texto1 = [
        CuriosidadesTextoExternoView(texto: "Nome científico: **Helianthus annuus** Nome que vem do grego e significa “flor do sol”")
    ]
    
    @Published var texto2 = [
        CuriosidadesTextoExternoView(texto: "Seu ciclo de vida é estritamente anual. Isso significa que a planta possui apenas uma estação de crescimento para realizar todo o seu desenvolvimento: germinar, crescer, florescer e produzir novas sementes.")
    ]
    
    @Published var texto3 = [
        CuriosidadesTextoExternoView(texto: "Os girassóis não fazem a busca pelo sol; eles permanecem posicionados para o leste durante todo o dia. Portanto, é importante que não haja sombra nessa direção.")
    ]
    
    @Published var texto4 = [
        CuriosidadesTextoExternoView(texto: "A espécie prefere clima quente e seco, solos bem drenados, ricos em matéria orgânica e com boa disponibilidade de nutrientes, no mínimo, 6 horas de sol direto por dia.")
    ]
    
    @Published var texto5 = [
        CuriosidadesTextoExternoView(texto: "Já sobre a manutenção é importante fazer o Estaqueamento.")
    ]
    
    @Published var texto6 = [
        CuriosidadesTextoExternoView(texto: "As espécies de girassóis mais altos (mais de 1,5m) exigem suporte (estacas de bambu ou treliças) para não tombarem no chão")
    ]
    
    @Published var texto7 = [
        CuriosidadesTextoExternoView(texto: "Não se esqueça da remoção das folhas e flores murchas para estimular a planta a produzir novas  em vez de gastar energia em semente, assim seu girassol vai parecer sempre grande e bonito. ")
    ]
    
    @Published var texto8 = [
        CuriosidadesTextoExternoView(texto: "Mas como posso regar?")
    ]
    
    @Published var texto9 = [
        CuriosidadesTextoExternoView(texto: "Regue com mais frequência quando a planta for jovem, diariamente ou a cada dois dias, e reduza para 2 a 3 vezes por semana quando ela estiver adulta.")
    ]
    
    @Published var texto10 = [
        CuriosidadesTextoExternoView(texto: "Em períodos de calor intenso, como no verão, o girassol pode precisar de rega diária devido à rápida evaporação da água.")
    ]
    
    @Published var texto11 = [
        CuriosidadesTextoExternoView(texto: "Já em períodos chuvosos, suspenda ou reduza a rega. Como a necessidade de água dessa espécie não é totalmente regular, é importante verificar constantemente o solo. A melhor maneira de saber quando é hora de regar é tocando a terra com o dedo: se os primeiros 2 cm a 5 cm do solo estiverem secos, é hora de regar.")
    ]
    
    @Published var texto12 = [
        CuriosidadesTextoExternoView(texto: "Quanto tempo dura o girassol?")
    ]
    
    @Published var texto13 = [
        CuriosidadesTextoExternoView(texto: " O Girassol Helianthus annuus\n possui um ciclo de vida anual, com\n duração    média   de\n aproximadamente 3 a 5  meses,\n dependendo das condições de\n cultivo, clima e variedade.\n Sua floração geralmente ocorre\n entre 60 e 90 dias após o plantio,\n e as flores podem permanecer\n bonitas e abertas por cerca de 2 a\n 4 semanas.")
    ]
    
    @Published var texto20 = [
        CuriosidadesTextoExternoView(texto: " O Girassol Helianthus annuus possui um ciclo de vida anual, com duração    média   de aproximadamente 3 a 5  meses, dependendo das condições de cultivo, clima e variedade. Sua floração geralmente ocorre entre 60 e 90 dias após o plantio,e as flores podem permanecer bonitas e abertas por cerca de 2 a 4 semanas.")
    ]
    
    @Published var texto14 = [
        CuriosidadesTextoExternoView(texto: "Fungicida")
    ]
    
    @Published var texto15 = [
        CuriosidadesTextoExternoView(texto: "Alguns pontos importantes: ")
    ]
    
    @Published var texto16 = [
        CuriosidadesTextoExternoView(texto: "• Muitos fungicidas podem causar irritação na pele, olhos e vias respiratórias.")
    ]
    
    @Published var texto17 = [
        CuriosidadesTextoExternoView(texto: "• É recomendado usar luvas, máscara e evitar contato direto.")
    ]
    
    @Published var texto18 = [
        CuriosidadesTextoExternoView(texto: "• Alguns produtos têm restrições para uso doméstico ou exigem orientação agronômica.")
    ]
    
    @Published var texto19 = [
        CuriosidadesTextoExternoView(texto: "• Em apartamentos ou ambientes fechados, o uso de fungicidas fortes pode não ser ideal por causa da ventilação.")
    ]
}
