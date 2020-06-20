import UIKit

class Rectangle: CustomStringConvertible {
    
    var description: String {
     return "Прямоугольник со сторонами \(sideA) и \(sideB)"
    }
    
    
    var sideA: Int
    var sideB: Int
    func calculatePerimeter() -> Int {
        return (sideA + sideB) * 2
    }
    init(sideA: Int, sideB: Int) {
        self.sideA = sideA
        self.sideB = sideB
    }
}

struct Queue<T> {
    var elements : [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        if elements.count > 0 {
        return elements.removeFirst()
        } else {
            return nil
        }
    }
    func filter(_ predicate: (T) -> Bool ) -> [T] {
        var result = [T]()
        for item in elements {
            if predicate(item) {
                result.append(item)
            }
        }
        return result
    }
}

var queueRectangle = Queue<Rectangle>()

queueRectangle.push(Rectangle(sideA: 10, sideB: 12))
queueRectangle.push(Rectangle(sideA: 13, sideB: 15))
queueRectangle.push(Rectangle(sideA: 15, sideB: 20))

print(queueRectangle)

queueRectangle.pop()

print(queueRectangle)

//Создаем еще один массив состоящий из интов, чтобы применить к нему функцию filter

var queue = Queue<Int>()
queue.push(23)
queue.push(2)
queue.push(45)
queue.push(46)

print(queue)

print(queue.filter {
    $0 > 23
})
