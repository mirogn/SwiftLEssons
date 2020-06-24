import UIKit

enum PossibleErrors: Error {
    case notInStock
    case notEnoughtMoney
}

struct  Book {
    let price: Int
    var count: Int
}

class Library {
    var deposit = 11
    var libraryBooks = ["BookOne": Book(price: 10, count: 1), "BookTwo": Book(price: 11, count: 0), "BookThree": Book(price: 12, count: 3)]
    
    func getTheBook(withName: String) throws {
        guard var book = libraryBooks[withName] else {
            throw PossibleErrors.notInStock
        }
        
        guard book.count > 0 else {
            throw PossibleErrors.notInStock
        }
        
        guard book.price <= deposit else {
            throw PossibleErrors.notEnoughtMoney
        }
        
        deposit -= book.price
        book.count -= 1
        libraryBooks[withName] = book
        
        print("You got the Book: \(withName)")
        
    }
}

let library = Library()
try? library.getTheBook(withName: "BookOne")
library.deposit
library.libraryBooks

do {
    try library.getTheBook(withName: "BookOne")
} catch PossibleErrors.notInStock {
    print("Book is not in stock")
} catch PossibleErrors.notEnoughtMoney {
    print("Not enough money")
}
