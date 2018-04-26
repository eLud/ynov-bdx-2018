//: Playground - noun: a place where people can play

import UIKit

var str = """
    Hello,
        playg
    round
    """

print(str)

func multiply(firstNumber: Int, secondNumber: Int) -> Int {
    let result = firstNumber * secondNumber
    print("The result is \(result).")
    return result
}

let r = multiply(firstNumber: 10, secondNumber: 56)


func sayHello(firstName: String) {

    print("Hello, \(firstName)")
}
sayHello(firstName: "Paul")

func sayHello(to person1: String, and person2: String) {
    print("Hello, \(person1) and \(person2)")
}

sayHello(to: "Paul", and: "David")

func append(_ anotherString: String) {

}
append("rftertger")


struct Temperature {

    var celsius: Double

    //Computed property
    var fahrenheit: Double {
        get {
            return celsius * 1.8 + 32
        }
        set {
            celsius = (newValue - 32) / 1.8
        }
    }

    init(celsius: Double) {
        self.celsius = celsius
    }

    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }
}

var t = Temperature(celsius: 0)
t.celsius = 30
t.fahrenheit = 65

t.celsius



class Person {
    let name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct Personne {
    let name: String
    var age: Int
}

var p1 = Person(name: "Jack", age: 24)
let p2 = Personne(name: "Jack", age: 24)
p1.age = 30
p1.age

p1 = Person(name: "toto", age: 0)


//: # Type Casting

class Animal {
    func test(){}
}

class Dog: Animal {
    func walk() {}
}
class Bird: Animal {
    func cleanCage() {}
}
class Cat: Animal {
    func cleanLitterBox() {}
}

let aCat = Cat()
let aBird = Bird()
let aDog = Dog()

let allAnimals = [aCat, aDog, aBird]

for a in allAnimals {


    // IS
    if a is Cat {
        print("It's a cat")
    } else if a is Dog {
        print("It's a dog")
    } else if a is Bird {
        print("It's a bird")
    } else {
        print("It's something")
    }

    //AS
    if let dog = a as? Dog {
        dog.walk()
    } else if let cat = a as? Cat {
        cat.cleanLitterBox()
    } else if let bird = a as? Bird {
        bird.cleanCage()
    }

//    guard let dog = a as? Dog else { fatalError() }
}












