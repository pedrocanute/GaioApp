import Foundation

enum TipoPlanta {
	case girassol
	case costelaDeAdao
	case plantaCarnivora
}

struct PlantaPickerModel: Identifiable, Hashable {
	let id = UUID()
	let nome: String
	let tipo: TipoPlanta
}

struct PlantasData {
	static let plantas: [PlantaPickerModel] = [
		PlantaPickerModel(nome: "Girassol", tipo: .girassol),
		PlantaPickerModel(nome: "Planta Carnívora", tipo: .plantaCarnivora),
		PlantaPickerModel(nome: "Costela-de-Adão", tipo: .costelaDeAdao)
	]
}
