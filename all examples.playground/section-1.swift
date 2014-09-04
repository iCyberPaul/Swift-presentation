// Playground - noun: a place where people can play

import UIKit


class Residence_1 {
    var numberOfRooms = 1
}

class Person_1 {
    var residence: Residence_1 = Residence_1()
    let name:String = "Cave"
    
    init(){
        
    }
}


let john_doe = Person_1()


let roomCount_1 = john_doe.residence.numberOfRooms

println( "\(john_doe.name) residence has \(roomCount_1) room" +  (roomCount_1 > 1 ? "s" : "") + "." )




class Residence {
    var numberOfRooms = 123
}

class Building {
    var residence: Residence? = Residence()
    let name:String = "Lair"
    init(){
    }
}

let john = Building()

if let roomCount = john.residence?.numberOfRooms{
    println( "\(john.name) residence has \(roomCount) room" +  (roomCount > 1 ? "s" : "") + "." )
} else {
    println("Unable to retrieve the number of rooms.")
}





























var intVariable:Int!

let copyInt = intVariable ?? 42

println("\(copyInt)")




// optionals are initialised to a value or nothing.
// in obj-C an int would be initialised to a value or zero.
var optionalInt :Int!
var newInt = 0
//optionalInt = 7


if let dummy = optionalInt {
    newInt = 100
    
} else {
    newInt = 777
}

println(newInt)


var optionalString: String! = "Hello"
//optionalString == nil
println(optionalString)

var optionalName: String! //= "John Appleseed"
var greeting = "Hello!"
var new_name = optionalName
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    greeting = "Go away"
}

println(greeting)


let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()
// convertedNumber is inferred to be of type "Int?", or "optional Int”
println("\(possibleNumber) has an integer value of \(convertedNumber)")
if (convertedNumber != nil) {
    println("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}
// prints "123 has an integer value of 123”

if let actualNumber = possibleNumber.toInt() {
    println("\(possibleNumber) has an integer value of \(actualNumber)")
} else {
    println("\(possibleNumber) could not be converted to an integer")
}


var whatSortOfStringIsThis : String! = "crap"
println(whatSortOfStringIsThis)
whatSortOfStringIsThis = "a stupid string"

println(whatSortOfStringIsThis)





let aptNumbers = ["101","202","303","404"]
func findApt (aptNumber : String, aptNumbers: [String]) -> String? {
    for tempAptNumber in aptNumbers {
        if ( tempAptNumber == aptNumber) {
            return aptNumber
        }
    }
    return ""
}

func sendNotice(){
    println("\nhi \(culprit!)")
}

let culprit = findApt("404",aptNumbers)
if culprit != nil {
    sendNotice();
}


// Value type example
struct S { var data: Int = -1 }
var a = S()
var b = a						// a is copied to b
a.data = 42						// Changes a, not b
println("\(a.data), \(b.data)")	// prints "42, -1"


// Reference type example
class C { var data: Int = -1 }
var x = C()
var y = x						// x is copied to y
x.data = 42						// changes the instance referred to by x (and y)
println("\(x.data), \(y.data)")	// prints "42, 42"



// ? example
// ? = may or may not hold a value

var variableInt :Int?
println(variableInt)
variableInt = 123
println(variableInt)

func function(ourNumber:Int?) -> String? {
    if (ourNumber == 777) {
        return nil
    }
    if (ourNumber == nil) {
        return "it is false"
    }
    return "it is true"
}

variableInt = 999
println(function(variableInt))

var anotherVariableInt:Int?
println(function(anotherVariableInt))

variableInt = 777
println(function(variableInt))


// The other place to use ? is
// when chaining objects

class Class{
    var wealth:Int = 0
    var address:String?
}

class Person{
    var socialStatus:Class?
}

var Fred:Person = Person()
Fred.socialStatus = Class()
Fred.socialStatus?.address = "high street"
Fred.socialStatus?.wealth = 1
println(Fred.socialStatus?.address?.uppercaseString)
println(Fred.socialStatus?.wealth)

var Freida:Person = Person()
Freida.socialStatus = Class()
//Freida.socialStatus?.address = "the avenue"
Freida.socialStatus?.wealth = 10
println(Freida.socialStatus?.address?.uppercaseString)
println(Freida.socialStatus?.wealth)


var Fredderick:Person = Person()
//Fredderick.socialStatus = Class()
Fredderick.socialStatus?.address = "the grange"
Fredderick.socialStatus?.wealth = 100
println(Fredderick.socialStatus?.address?.uppercaseString)
println(Fredderick.socialStatus?.wealth)


// ! example
// This means that the optional value is assumed to have been assigned a value,
// and is said to be "unwrapped"

variableInt = 42
print(variableInt!)

println(variableInt!)

if let constantInt = variableInt {
    println("We now know that the Int holds a value, which is \(variableInt!)")
} else {
    println("Does not hold a value ")
}

variableInt = nil
println(variableInt?)

if let constantInt = variableInt {
    println("We now know that the Int holds a value, which is \(variableInt!)")
} else {
    println("Does not hold a value ")
}


// ?? example

var intVar:Int?  //= 3

let Int_1 = (intVar == nil ? 42 : intVar) // gives an optional result, Int?
println(Int_1)


let Int_2 = (intVar == nil ? 42 : intVar!) // ! forces an unwrapped Int result
println(Int_2)


let Int_3 = intVar ?? 42 // equivalent to Int_2 with an unwrapped Int result
println(Int_3)








