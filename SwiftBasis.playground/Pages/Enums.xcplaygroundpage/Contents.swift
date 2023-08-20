import Foundation

// Enum is the same as Struct except we know all cases at runtime

struct CarModel {
    let brand: CarBrandOption
    let model: String
}

struct CarBrand {
    let title: String
}

// Enums are stored in the Stack same way as Struct but we cannot mutate them
enum CarBrandOption {
    case ford
    case toyota
}

//var car1: CarModel = CarModel(brand: "Ford", model: "Fiesta")
//var car2: CarModel = CarModel(brand: "Ford", model: "Focus")
//var car3: CarModel = CarModel(brand: "Toyota", model: "Camry")

var car1: CarModel = CarModel(brand: .ford , model: "Fiesta")
var car2: CarModel = CarModel(brand: .ford, model: "Focus")
var car3: CarModel = CarModel(brand: .toyota , model: "Camry")
