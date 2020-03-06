import UIKit

//Initialiser
//1)
struct a{
    var value: String
    var key: Int
}
let b=a(value: "ABC", key: 1)

//3
class movie{
    var title:String?
    var author = ""
    var publisher:String?
    init()
    {
        title="New Movie"
        publisher="Unkown"
    }
    convenience init(t : String,p: String) {
        self.init()
        title = t
        publisher = p
    }
}
var m=movie()
print(m.author)
print(m.publisher!)
print(m.title!)

//Array
//1
var arr=[1,2,3,4,5]
var arr1=[Int]()
arr1+=[1,2,3,4,5]
var arr2:[Int]=[]
arr2+=[1,2,3,4,5]
var arr3:[Int]=[1,2,3,4,5]



//2
let city=["Lucknow","Delhi","Noida","Kolkata","Mumbai"]
//city[1]="Faizabad"        cannot assign as city is immutable

//3
var cities=["Lucknow","Delhi","Noida","Kolkata","Mumbai"]
cities+=["Canada", "Switzerland"]
cities.append("Spain")

//4
var val=[14, 18, 15, 16, 23, 52, 95]
val[2]=24
val[4]=48

//Set
let houseAnimals: Set=["Dog","Cat"]
let farmAnimals: Set=["Cow","Hen","Sheep","Dog","Cat"]
let cityAnimals: Set=["Bird","Rat"]

//1

houseAnimals.isSubset(of: farmAnimals)

//2
farmAnimals.isSuperset(of: houseAnimals)

//3
print(farmAnimals.intersection(cityAnimals))

//4
var animals: Set = farmAnimals.subtracting(houseAnimals)

//5
var allAnimals: Set=houseAnimals.union(farmAnimals.union(cityAnimals))

//Dictionary

//1
var dict1=[Int:Int]()
var dict2=Dictionary<Int,Int>()
var dict3=["Key":"Value"]
dict3=[:]

//2
var secretIdentities=["Hulk":"Bruce Banner", "Batman":"Bruce Wayne", "Superman":"Clark Kent"]

//3
var nestedDict=[Int:Any]()
nestedDict=[1:2,3:[5:6]]

//4
for(alias,name) in secretIdentities{
    print("Real name of \(alias) is \(name)")
}



struct personal{
    var employeeID: Int
    var name: String
    var country: String
    var address: String
    var hobbies: String?
}

struct professional{
    var employeeID: Int
    var name: String
    var department: String
    var branch: String
    var experience: Int
}
var persona : [personal] = [personal(employeeID: 1, name: "Sachin", country: "America", address: "India", hobbies: "Reading"),
            personal(employeeID: 2, name: "B", country: "India", address: "India", hobbies: "Reading"),
            personal(employeeID: 3, name: "C", country: "Britain", address: "India", hobbies: "Reading"),
            personal(employeeID: 4, name: "D", country: "Japan", address: "India", hobbies: "Reading"),
            personal(employeeID: 5, name: "E", country: "China", address: "India", hobbies: "Reading")]
var prof : [professional] = [professional(employeeID: 1, name: "Sachin", department: "IOS", branch: "India", experience: 5),
          professional(employeeID: 7, name: "F", department: "Android", branch: "India", experience: 5),
          professional(employeeID: 2, name: "B", department: "JVM", branch: "India", experience: 5),
          professional(employeeID: 8, name: "Z", department: "Web", branch: "India", experience: 5)]

//Structure
//1

struct person{
    var employeeID: Int
    var name: String
    var country: String
    var address: String
    var hobbies: String?
    var department: String
    var branch: String
    var experience: Int
}
var i=0
var persons : [person] = []
for item in persona{
    for items in prof{
        if item.employeeID == items.employeeID
        {
            let temp:person = person(employeeID: item.employeeID, name: item.name, country: item.country, address: item.address, hobbies: item.hobbies, department: items.department, branch: items.branch, experience: items.experience)
            persons.append(temp)
        }
    }
}

//3
func branch (dept: String)
{
    for items in prof
    {
        if dept == items.department
        {
            print(items.name)
        }
    }
}
branch(dept: "IOS")

//4
func country()
{
    for item in persona{
        for items in prof{
            if item.country == items.branch
            {
                let temp:person = person(employeeID: item.employeeID, name: item.name, country: item.country, address: item.address, hobbies: item.hobbies, department: items.department, branch: items.branch, experience: items.experience)
                print(temp)
            }
        }
    }
}
country()
//5
func hobby()
{
        for items in persons
        {
            if items.hobbies != nil
            {
                print("\(items.name) has a hobby of \(items.hobbies!) and an experience of \(items.experience)")
            }
        }
}
hobby()
//6
func name()
{
    for items in persons
    {
        if items.name.first == "S" || items.name.first == "s"
        {
            print(items.name)
        }
    }
}
name()
