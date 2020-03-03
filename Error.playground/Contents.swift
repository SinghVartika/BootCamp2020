import UIKit
//1)   What is Error Protocol. Create a custom error conforming to error protocol.

//Error Protocol is just a type of representing error values that can be thrown. Swift requires us to create a custom Error type. An Enum is created to conforms to the Error Protocol.Error Protocol is must for Error Handling and creating Error types.

enum CustomError : Error{ // here an custom error is conforming to error protocol
    case file1
    case file2
    case file3
}



//Write a failable initialiser for a class which throws a error  “Object not able to initialise” description a initialisationFailed case, Catch the error and print its error description.

enum FailableError : Error{
    case intialisationFailed
}

class FailableClass {
    var a : String?
    init?(x : String?) throws {
        if x!.isEmpty {
            throw FailableError.intialisationFailed
        }
        else{
            self.a = x
        }
    }
}
do{
     try FailableClass(x: "")
}
catch FailableError.intialisationFailed{
    print("Object not able to initialise")
}




//Explain the difference try, try?, try! , make sure to write a program to explain the difference.

// ANS:- try means that the method might throw an error and we have to use try to handle the error. When we use try then we have to use a do/catch block. try is basically use when we handle the errors manually.

// try? is an optional type in which do/catch block is not used. If the function throws an error it gives nil as the result, otherwise give the return value wrapped as an optional.

//try! It is used when we  know for sure that the function will not fail and returns the value. If the function does throw an error, your code will crash. In this do/catch block is not used.

//Example:-
enum TypeError : Error {
    case initialisation
}

class SecondClass {
    var abc: String?
    
    init?(xyz : String?) throws {
        
        if xyz!.isEmpty {
            throw TypeError.initialisation
        } else {
        self.abc = xyz
        }
    }
    
}



do {
      try SecondClass(xyz: "")// use of try with do/catch block
} catch TypeError.initialisation {
    print("Object Not Initialized")
}
var obj2 = try? SecondClass(xyz: "")// use of try?

var obj3 = try! SecondClass(xyz: "Hello")// use of try!




//4)





struct employee{
    var empID: Int
    var empName: String
    var empEmail: String
    var joiningDate: String
    var isPresent: String
    var competency: String
    var attendancePercent: String
}
var arr : [employee] = [employee(empID: 1, empName: "Sachin", empEmail: "sachin@tothenew", joiningDate: "22/08/2017", isPresent: "Yes", competency: "IOS", attendancePercent: "94")]
