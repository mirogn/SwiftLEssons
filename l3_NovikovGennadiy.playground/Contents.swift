import UIKit

enum ActionOfCAr {
    case engineStatus (on: Bool)
    case glassPosition (close: Bool)
}

enum ModelCar: String{
    case kodiaq, octavia, superb
    case man, volvo, kamaz
}

struct PassengerCar {
    let modelCar: ModelCar
    let year: Int
    let trunkVolume: Double
    let doors: Int
    
    func action (action: ActionOfCAr) {
        switch action {
        case .engineStatus(on: true):
            print("Двигатель автомобиля \(modelCar.rawValue) включен")
        case .engineStatus(on: false):
            print("Двигатель автомобиля \(modelCar.rawValue) выключен")
        case .glassPosition(close: true):
            print("Окна автомобиля \(modelCar.rawValue) открыты")
        case .glassPosition(close: false):
        print("Окна автомобиля \(modelCar.rawValue) закрыты")
        }
    }

    init( modelCar: ModelCar) {
        if modelCar == .kodiaq {
            year = 2018
            doors = 5
            trunkVolume = 60
        } else if modelCar == .octavia {
            year = 2019
            doors = 4
            trunkVolume = 45
        } else {
            year = 2020
            doors = 4
            trunkVolume = 50
        }
        self.modelCar = modelCar
    }
}

let skodaKodiaq = PassengerCar(modelCar: .kodiaq)
print(skodaKodiaq)
skodaKodiaq.action(action: .engineStatus(on: true))


//Можно ли было сделать вот так (см. ниже)? Описать почти все в энумах, а в структуре создать только уточнения, методы и инициализацию?
//
//enum Transport {
//    case passengerCar (brand: String, engine: Bool, windowPosition: Bool, trunkLoad: Int, years: Int, addBaggage: Int)
//    case truck (brand: String, engine: Bool, windowPosition: Bool, trunkLoad: Int, years: Int, addBaggage: Int)
//}
