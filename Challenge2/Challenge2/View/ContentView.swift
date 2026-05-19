//
//  ContentView.swift
//  Challenge2
//
//  Created by Pedro Canute on 08/05/26.
//

import SwiftUI

struct ContentView: View {
	
    var body: some View {
		GeometryReader { geometria in
			let largura = geometria.size.width
			let altura = geometria.size.height
			let noIPad = largura >= 700
			let naHorizontal = largura > altura
			
			if naHorizontal {
				
				HStack{
				
				}
				
			} else {
				
				VStack {
					
				}
			}
		}
	}
}

#Preview {
    ContentView()
}
