/* ! examples */                                                       import UIKit


// We have our optional variable initialised
var variableInt :Int? = 42
// optional value used
println(variableInt)

// unwrapped value used with ! - now non-optional
 println(variableInt!)
 
 
// optional variable not initialised
var anotherVariableInt :Int?  =  42 + 1

if ( anotherVariableInt == nil )
{
    println("Does not hold a value ")
}
else
{
    println("We now know that the Int holds a value")
    println("so we can use ! \(anotherVariableInt!)")
}




// From Before - As a exercise for the reader.

class Location{var weather:Climate?; var name:String="Aberystwyth" }
class Climate {var temp:Int = 42;    var visability:String? }

// all initialised
var Here:Location = Location()
Here.weather = Climate() // initialised
Here.weather?.visability = "clear"

println(Here.weather?.visability?.uppercaseString) // Optional
println(Here.weather?.visability!.uppercaseString) // Optional
println(Here.weather!.visability?.uppercaseString) // Optional
println(Here.weather!.visability!.uppercaseString) // Non-optional



