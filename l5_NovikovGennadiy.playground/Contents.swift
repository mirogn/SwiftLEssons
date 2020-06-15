import UIKit


enum CarAction {
    case turnEngineOn, turnEngineOff, windowOpening, windowClosing
}

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

protocol Car {
    
    var color: UIColor { get }
    var doorsCount: Int { get }
    var wheelCount: Int { get }
    
    var isEngineOn: Bool { get set }
    var areWindowsOpen: Bool { get set }
    
    func executeCarAction(action: CarAction)
}

//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

extension Car {
    mutating func turnEngine (action: CarAction) {
        switch action {
        case .turnEngineOn:
            guard !isEngineOn else { print("Ошибка, двигатель уже включен"); return }
                isEngineOn = true
                print("Двигатель запущен")
        case .turnEngineOff:
            guard isEngineOn else { print("Ошибка, двигатель уже выключен"); return}
            isEngineOn = false
            print("Двигатель выключен")
        default:
            print("Данное действие не поддерживается автомобилем")
            return
        }
    }
}

//Делаем расширение для протокола Car с методом открыть / закрыть окна/

extension Car {
    mutating func openOrCloseWindow (action: CarAction) {
        switch action {
        case .windowOpening:
            guard !areWindowsOpen else { print("Ошибка, двигатель уже включен"); return }
                areWindowsOpen = true
                print("Двигатель запущен")
        case .windowClosing:
            guard areWindowsOpen else { print("Ошибка, двигатель уже выключен"); return}
            areWindowsOpen = false
            print("Двигатель выключен")
        default:
            print("Данное действие не поддерживается автомобилем")
            return
        }
    }
}

//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

class SportCar: Car {
    
    func executeCarAction(action: CarAction) {
        
    }
    
    var color: UIColor
    var doorsCount: Int
    var wheelCount: Int
    var isEngineOn: Bool
    var areWindowsOpen: Bool
    var sportMode: Bool
    
    init(color: UIColor, doorsCount: Int, wheelCount: Int, isEngineOn: Bool, areWindowsOpen: Bool, sportMode: Bool ) {
        self.color = color
        self.doorsCount = doorsCount
        self.wheelCount = wheelCount
        self.isEngineOn = isEngineOn
        self.areWindowsOpen = areWindowsOpen
        self.sportMode = sportMode
    }
}

class TrunkCar: Car {
    
    func executeCarAction(action: CarAction) {
        
    }
    
    var color: UIColor
    var doorsCount: Int
    var wheelCount: Int
    var isEngineOn: Bool
    var areWindowsOpen: Bool
    var trailerAvailability: Bool
    
    init(color: UIColor, doorsCount: Int, wheelCount: Int, isEngineOn: Bool, areWindowsOpen: Bool, trailerAvailability: Bool ) {
        self.color = color
        self.doorsCount = doorsCount
        self.wheelCount = wheelCount
        self.isEngineOn = isEngineOn
        self.areWindowsOpen = areWindowsOpen
        self.trailerAvailability = trailerAvailability
    }
}

//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

extension SportCar: CustomStringConvertible {
    var description: String {
        "This is Sport Car"
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        "This is Trunk Car"
    }
}

var volvoRS = SportCar(color: .black, doorsCount: 2, wheelCount: 4, isEngineOn: true, areWindowsOpen: false, sportMode: true)
var volvoTruck = TrunkCar(color: .blue, doorsCount: 2, wheelCount: 10, isEngineOn: false, areWindowsOpen: true, trailerAvailability: true)

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

volvoRS.turnEngine(action: .turnEngineOff)
volvoRS.openOrCloseWindow(action: .windowOpening)
print(volvoRS.description)

volvoTruck.turnEngine(action:.turnEngineOn)
volvoTruck.openOrCloseWindow(action: .windowClosing)
print(volvoTruck.description)
