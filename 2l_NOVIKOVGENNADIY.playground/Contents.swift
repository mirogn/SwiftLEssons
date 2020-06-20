import UIKit

//Пишем функцию, которая проверяет четное ли заданное число

func evenNumbers(number: Int) {
    if number % 2 == 0 {
        print("\(number) this is even number")
    } else {
        print("\(number) this is uneven number")
    }
}
//Проверяем четное ли заданное число

evenNumbers(number: 75)
evenNumbers(number: 22)

print("--------")

//Пишем функцию, которая проверяет делится ли число без остатка на 3

func divisionWithoutRemainder(number: Int) {
    if number % 3 == 0 {
        print("\(number) this number is divided without remainder")
    } else {
        print("\(number) this number is divided with remainder")
    }
}
//Проверяем остается ли остаток при делении на 3

divisionWithoutRemainder(number: 9)
divisionWithoutRemainder(number: 85)

print("--------")

//Создаем возрастающий массив через цикл for in

var anotherArray = [Int]()
for i in 1...100 {
    anotherArray.append(i)
}
print(anotherArray)

print("--------")

//Удаляем из массива все четные числа и все числа, которые не делятся на 3

for (index, value) in anotherArray.enumerated() {
    if value % 2 == 0 || value % 3 != 0 {
        anotherArray.remove(at: anotherArray.firstIndex(of: value)!)
    }
}
print(anotherArray)
