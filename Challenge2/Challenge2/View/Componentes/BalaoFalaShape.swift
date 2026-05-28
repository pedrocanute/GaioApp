//
//  BalaoFalaShape.swift
//  Challenge2
//
//  Created by Pedro Canute on 26/05/26.
//
import SwiftUI
struct BalaoFalaShape: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		
		let cornerRadius: CGFloat = 20
		let tailWidth: CGFloat = 24
		let tailHeight: CGFloat = 18
		
		let bubbleRect = CGRect(
			x: rect.minX,
			y: rect.minY,
			width: rect.width,
			height: rect.height - tailHeight
		)
		
		path.addRoundedRect(
			in: bubbleRect,
			cornerSize: CGSize(width: cornerRadius, height: cornerRadius)
		)
		
		let tailX = rect.minX + rect.width * 0.22
		let tailY = bubbleRect.maxY
		
		path.move(to: CGPoint(x: tailX, y: tailY))
		path.addLine(to: CGPoint(x: tailX + tailWidth, y: tailY))
		path.addLine(to: CGPoint(x: tailX + tailWidth * 0.35, y: rect.maxY))
		path.closeSubpath()
		
		return path
	}
}
#Preview {

	ZStack {
		Color.green.opacity(0.3).ignoresSafeArea()
		
		AlertaFungoView(iPad: false)
	}

}
