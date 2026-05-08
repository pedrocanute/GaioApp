//
//  ContentView.swift
//  Challenge2
//
//  Created by Pedro Canute on 08/05/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var stickMan : String = "stickman_01"
    
    var body: some View {
        VStack {
            Image(stickMan)
                .resizable()
                .frame(width: 100, height: 500, alignment: .center)
                .onAppear (perform: timerStickMan)
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
