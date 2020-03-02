import UIKit

//What is extension?
//Extension is a feature in swift that allows us to add extended functionalities in our program. It helps us in adding added functions and properties into our existing data type and use it whenever required.

//Create a class and write the delegate of UITextField in extension of that class.

class text : UITextField{
    
}

extension text : UITextFieldDelegate
{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        <#code#>
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        <#code#>
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        <#code#>
    }
}

//Write a protocol and create an extension of the protocol. In extension create a function

protocol prt{
    //code
}
class code : prt{
    //code
}

extension code{
    func sayHello() {

      print("Hello!")

    }
}

//Write an enum and create an extension of the enum.

enum weeks{
    case Monday
    case Tuesday
    case Wednusday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

extension weeks{
    func day(){
        switch self{
        case .Monday:
            print (1)
        case .Tuesday:
            print(2)
        case .Wednusday:
            print(3)
        case .Thursday:
            print(4)
        case .Friday:
            print(5)
        case .Saturday:
            print(6)
        case .Sunday:
            print(7)
            
        }
    }
}

// What is Generic?

//Generic programming is a way of writing a program that can universally work with all the data types. They can work irrespective of the data types.

//Explain generic with an example?

func swap<T>(_ a : inout T,_ b : inout T)
{
    let k=a
    a=b
    b=k
}
var x=5
var y=9
swap(&x, &y)
print("X-\(x)   Y-\(y)")

//Explain the difference between map and compactMap with an example.

// In map we create a copy of our data using certain condition that we want to apply on it. In map all the elements are present in the copy while in compact map the nil elements are removed in the copy. These nil might be obtained due to the unwrapping of the variable that have optional binding.

// Write an example of reduce function with initial value 1000.

let arr = Array(1...5)

let newarr = arr.reduce(1000, {x,y in x+y})

//9

  struct Person {

    

    var name : String

    var age : Int

    

}

let person1 = Person(name: "Sam", age: 23)

let person2 = Person(name: "John", age: 30)

let person3 = Person(name: "Rob", age: 27)

let person4 = Person(name: "Luke", age: 20)

 

 

let personArray = [person1, person2, person3, person4]

 

//Find all person whose age is more than 25 using filter function.
let filarr = personArray.filter({$0.age > 25})

print(filarr)

