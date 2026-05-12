//
//  ContentView.swift
//  Challenge2
//
//  Created by Pedro Canute on 08/05/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var stickMan : String = "stickman_01"
    @State var progressoSol: Double = 0.5
    var statusIluminacao: StatusIluminacao {
        StatusIluminacao.calcularStatus(valor: progressoSol)
    }
    
    var body: some View {
        VStack {
            Image(stickMan)
                .resizable()
                .frame(width: 100, height: 500, alignment: .center)
                .onAppear (perform: timerStickMan)
            SliderSol(valor: $progressoSol, status: statusIluminacao)
                .frame(maxWidth: 300)
                .padding(.horizontal, 10)
            
        }
    }
    func timerStickMan() {
        var index = 1
        let timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { (timer) in
            
            stickMan = "stickman_0\(index)"
            
            index += 1
            
            if (index > 2) {
                index = 1;
            }
        }
    }
}

#Preview {
    ContentView()
}
