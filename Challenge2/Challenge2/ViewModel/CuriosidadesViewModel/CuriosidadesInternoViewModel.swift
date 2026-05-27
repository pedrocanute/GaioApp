//
//  CuriosidadesInternoViewModel.swift
//  Challenge2
//
//  Created by Pedro Monge Silveira on 25/05/26.
//

import SwiftUI
import Combine

class CuriosidadesInternoViewModel: ObservableObject {
    
    @Published var tex1 = [
        CuriosidadesTextoInternoModel(texto: "O girassol-anão é uma versão com-pacta do girassol tradicional. Podendo atingir entre 20 a 30 centímetros de altura.\n\nO girassol precisa de pelo menos 6 horas de sol direto por dia para crescer saudável e florido.\n\nO ideal é deixar o vaso próximo a uma janela iluminada ou em uma varanda ensolarada.")
    ]
    @Published var tex2 = [
        CuriosidadesTextoInternoModel(texto: "Prepare uma mistura de terra vegetal e composto orgânico para um substrato rico em nutrientes. Durante o crescimento, mantenha o solo levemente úmido, regando a cada dois dias ou sempre que a terra começar a secar.Evite excesso de água, pois o encharcamento pode apodrecer as raízes das plantas.")
        
    ]
    @Published var tex3 = [
        CuriosidadesTextoInternoModel(texto: "Gire o vaso regularmente"),
        
        CuriosidadesTextoInternoModel(texto: "Virar o vaso de tempos em tempos ajuda a planta a crescer reta e uniforme, evitando que ela incline apenas para um lado.\n\nMantenha-a em ambientes com temperatura entre 18ºC a 30ºC.  ")
    ]
    
    @Published var tex4 = [
        CuriosidadesTextoInternoModel(texto: "Boa drenagem é importante"),
        
        CuriosidadesTextoInternoModel(texto: "Use vasos com furos no fundo para evitar acúmulo de água e garantir uma drenagem adequada.\n\nUm girassol-anão pequeno (15 a 20 cm) precisa de aproximadamente um copo de requeijão (250 ml) de água a cada um ou dois dias.\n\nCaso seu girassol possua 20 a 30 cm, serão necessários dois ou três copos de requeijão, duas vezes por semana, para que o substrato se mantenha minimamente úmido.")
        ]
    
    @Published var tex5 = [
        CuriosidadesTextoInternoModel(texto: "Mas meu girassol tem mais que 30 cm, neste caso, seriam necessários de 4 a 6 copos de requeijão de água, por duas vezes na semana.")
    ]
    
   @Published var tex6 = [
        CuriosidadesTextoInternoModel(texto: "Adubação ajuda na floração."),
        
        CuriosidadesTextoInternoModel(texto: "Adicionar um adubo orgânico leve a cada 15 dias fortalece a planta e contribui para flores saudáveis. Uma boa sugestão é o humus de minhoca."),
        
        CuriosidadesTextoInternoModel(texto: "Quanto tempo dura o girassol?")
        
    ]
    
    @Published var tex7 = [
        CuriosidadesTextoInternoModel(texto:"O girassol-anão possui um ciclo de vida de aproximadamente 2 a 4 meses. Portanto, sua floração costuma durar entre 30 e 45 dias, mantendo pétalas firmes e cores vibrantes. Após esse período, a planta encerra seu ciclo natural, podendo gerar sementes para um novo plantio.")
    ]
}
