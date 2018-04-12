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





