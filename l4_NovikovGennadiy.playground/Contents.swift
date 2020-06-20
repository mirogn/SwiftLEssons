import UIKit

enum Brand: String  {
    case volvo = "Volvo"
    case skoda = "Skoda"
}

enum OptionalEquipment {
    case spoiler, trailer
}

enum Transmission {
    case automat, mechanic
}

class Car {
    
    var doors: Int = 4
    var wheels: Int = 4
    var transmission: Transmission
    var brand: Brand
    var optionalEquipment: OptionalEquipment
    
    init (transmission: Transmission, brand: Brand, optionalEquipment: OptionalEquipment) {
        self.transmission = transmission
        self.brand = brand
        self.optionalEquipment = optionalEquipment
    }
    
    func someAction() {
        
    }
}

class SportCar: Car { //Создаем подкласс спортивной машины
    var sportMode: Bool
    var sexyGirl: Bool
    
    func someAction(sportMode: Bool) {
        if sportMode == true {
            transmission = Transmission.mechanic
            sexyGirl == true
            print("У вашей \(brand.rawValue) выбран режим спортивной езды, переведите коробку передач на ручное управление и попросите девушку пристегнуть ремень безопасности.")
        } else {
            transmission = Transmission.automat
            print("У вашей \(brand.rawValue) выбран режим городской езды, переведите коробку передач на автоматическое управление и попросите бабушку пристегнуть ремень безопасности, мы едем на дачу")
        }
    }
    
    init(transmission: Transmission, brand: Brand, optionalEquipment: OptionalEquipment, sportMode: Bool, sexyGirl: Bool) {
        self.sportMode = sportMode
        self.sexyGirl = sexyGirl
            super.init(transmission: transmission, brand: brand, optionalEquipment: optionalEquipment)
    }
}

var skodaOctaviaRS = SportCar(transmission: .automat, brand: .skoda, optionalEquipment: .spoiler, sportMode: true, sexyGirl: true)
var skodaFabia = SportCar(transmission: .automat, brand: .skoda, optionalEquipment: .spoiler, sportMode: true, sexyGirl: false)

skodaOctaviaRS.someAction(sportMode: true) //Вызываем метод
print("---")
skodaFabia.someAction(sportMode: false)

print("--- --- ---")

class TrunkCar: Car { //Создаем подкласс грузовой машины
    var newOrder: Bool
    var dog: String
    var income: Int
    var money :Int
    
    func someAction(newOrder: Bool) {
        if newOrder == true {
            optionalEquipment = OptionalEquipment.trailer
            print("Поступил новый заказ на сумму \(income) $. Кажется твою собаку зовут \(dog)? Буди ее, пора цеплять прицеп и отправляться в дорогу")
        } else {
            print("Денег осталось всего \(money) $, неплохо было бы поискать новый заказ на перевозку грузов иначе придется продавать прицеп")
        }
    }
    
    init(transmission: Transmission, brand: Brand, optionalEquipment: OptionalEquipment, newOrder: Bool, dog: String, income: Int, money: Int) {
        self.newOrder = newOrder
        self.dog = dog
        self.income = income
        self.money = money
            super.init(transmission: transmission, brand: brand, optionalEquipment: optionalEquipment)
    }
}

var volvoTruck = TrunkCar(transmission: .automat, brand: .volvo, optionalEquipment: .trailer, newOrder: true, dog: "Тузик", income: 1000, money: 500)
var volvoTruckTwo = TrunkCar(transmission: .automat, brand: .volvo, optionalEquipment: .trailer, newOrder: false, dog: "Шарик", income: 0, money: 100)

// Вызываем метод

volvoTruck.someAction(newOrder: true)
print("---")
volvoTruckTwo.someAction(newOrder: false)
