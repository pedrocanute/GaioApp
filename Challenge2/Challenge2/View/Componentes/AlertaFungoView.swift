import SwiftUI

struct AlertaFungoView: View {
	@State private var pulando = false
	let iPad: Bool
	
	var body: some View {
		HStack(alignment: .center, spacing: iPad ? 18 : 10) {
			
			Image(systemName: "allergens.fill")
				.resizable()
				.scaledToFit()
				.frame(width: 60, height: 50)
				.padding(.top, 5)
				.padding(.bottom, 25)
				.foregroundStyle(.purple)

			VStack(alignment: .center, spacing: 0) {
				Text("Fungo!")
					.font(.custom("CreatoDisplay-Bold", size: 20))
					.foregroundStyle(.black)
					.padding(.bottom, 5)
				
				Text("Diminua a rega e \naumente a iluminação")
					.font(.custom("CreatoDisplay-Medium", size: 14))
					.foregroundStyle(.black.opacity(0.75))
					.padding(.bottom)
					.multilineTextAlignment(.center)
					
			}
		}
		.padding(.horizontal, 20)
		.padding(.top, 20)
		.padding(.bottom, 20)
		.background {
			BalaoFalaShape()
				.fill(Color.corFundoBege.opacity(0.75))
				.shadow(color: .black.opacity(0.25), radius: 8, x: 0, y: 4)
				.frame(width: 235)
		}
		.onAppear {
			pulando = true
		}
	}
}
#Preview {
	AlertaFungoView(iPad: false)
}
