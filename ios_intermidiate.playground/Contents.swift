import UIKit

//1) Write a function called siftBeans(fromGroceryList:) that takes a grocery list (as an array of strings) and “sifts out” the beans from the other groceries. The function should take one argument that has a parameter name called list, and it should return a named tuple of the type (beans: [String], otherGroceries: [String])

var beans : [String] = []
var otherGroceries : [String] = []
func siftBeans(fromGroceryList: [String])
{
    for item in fromGroceryList
    {
        if item.contains("bean")
        {
            beans.append(item)
        }
        else
        {
            otherGroceries.append(item)
        }
    }
}
let result = siftBeans(fromGroceryList: ["green beans","milk","black beans","pinto beans","apples"])
print (beans)
print(otherGroceries)

//2) Make a calculator class with a function name “equals” that take an enum case as value like multiply, subtraction, addition, square root, division.

enum calculator{
    case Multiplication(Int,Int)
    case Division(Int,Int)
    case Addition(Int,Int)
    case Substraction(Int,Int)
}

class Calculate {
    func equals (arg : calculator) -> Int {
        switch arg{
        case .Multiplication(var first,var second):
            return first*second
        case .Division(var first,var second):
            return first/second
        case .Addition(var first,var second):
            return first+second
        case .Substraction(var first,var second):
            return first-second
        }
    }
}
 var cal = Calculate()
print(cal.equals(arg: .Multiplication(4, 4)))


//3) Make the same calculator using functions as an argument, define all type functions in a struct.

struct Operation
{
    static func addition(a : Int, b : Int) -> Int
    {
        return a + b
    }
    static func subtraction(a : Int, b : Int) -> Int
    {
        return a - b
    }
    static func multiplication(a : Int, b : Int) -> Int
    {
        return a * b
    }
    static func division(a : Int, b : Int) -> Int
    {
        return a / b
    }
}
class Calculator
{
    func equals(argumentAs function : (Int, Int) -> Int, num1 : Int, num2 : Int) -> Int
    {
        return function(num1, num2)
    }
}
var abc = Calculator()
let abc2 = abc.equals(argumentAs: Operation.addition(a:b:), num1: 5, num2: 4)
print(abc2)
