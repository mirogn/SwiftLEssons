import UIKit

//Длина катетов

let legOne: Double = 8
let legTwo: Double = 6

//Вычисляем площадь прямоугольного треугольника

let areaTriangle: Double = (legOne) * (legTwo) / 2
print("Площадь треугольника равна \(areaTriangle) см")

//Вычисляем длину гипотенузы треугольника

let hypotenuse: Double = sqrt(Double(legOne * legOne) + Double(((legTwo * legTwo))))
print("Гипотенуза треугольника равна \(hypotenuse) см")

//Вычисляем периметр треугольника

let perimeterTriangle: Double = legOne + legTwo + hypotenuse
print("Периметр треугольника равен \(perimeterTriangle) см")

//Вычисляем сумму вклада через 5 лет

var clientMoney: Double = 20000
var percent: Double = 0.07
for _ in 1...5 {
    clientMoney = Double(clientMoney + (clientMoney * Double(percent)))
}
print("Сумма вклада через 5 лет составит \(Float(clientMoney)) руб.")

//Решаем квадратное уравнение: ax2 + bx + c = 0

let a: Double = 3
let b: Double = 4
let c: Double = 1
var x: Double = Double()
var x1: Double = Double()
var x2: Double = Double()

let discriminant: Double = (b * b) - (4 * a * c)

if discriminant < 0 {
    print("Нет действительных корней")
} else if discriminant == 0 {
    x = -b / (2 * a)
    print("x = \(x)")
} else {
    x1 = (-b + sqrt(discriminant)) / (2 * a)
    x2 = (-b - sqrt(discriminant)) / (2 * a)
    print("x1 = \(x1), x2 = \(x2)")
}

