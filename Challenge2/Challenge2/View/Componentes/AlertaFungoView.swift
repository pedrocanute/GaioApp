import SwiftUI

struct AlertaFungoView: View {
	@State private var pulando = false
	let iPad: Bool
	
	var body: some View {
		HStack(alignment: .center, spacing: 15) {
			
			Image(systemName: "allergens.fill")
				.resizable()
				.scaledToFit()
				.frame(width: 60, height: 50)
				.padding(.top, 5)
				.padding(.bottom, 20)
				.foregroundStyle(.purple)

			VStack(alignment: .center, spacing: 0) {
				Text("Fungos!")
					.font(.custom("CreatoDisplay-Bold", size: 16))
					.foregroundStyle(.black)
					.padding(.bottom, 5)
				
				Text("Reduza a água e \naumente a iluminação")
					.font(.custom("CreatoDisplay-Medium", size: 12))
					.foregroundStyle(.black.opacity(0.75))
					.padding(.bottom)
					.multilineTextAlignment(.center)
					
			}
		}
		.padding(.horizontal, 20)
		.padding(.top, 10)
		.padding(.bottom, 10)
		.background {
			BalaoFalaShape()
				.fill(Color.corFundoBege.opacity(0.75))
				.shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 4)
				.frame(width: 210)
		}
		.onAppear {
			pulando = true
		}
	}
}
#Preview {
	AlertaFungoView(iPad: false)
}
