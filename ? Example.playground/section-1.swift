/* ? Examples  */                                                        import UIKit


// How to make a variable optional

var variableInt : Int?    = 42 // Can be initialised

println(variableInt)







// Passing in and returning optionals from functions
func function( ourNumber : Int? ) -> String? {
    
    if (ourNumber == 42) {
        return nil // Note we have to return a nil
    }

    /// Why can't we just test for a value
    if (ourNumber != nil)  { return "it is true" }

    return "just return"
}

// Passing a value
variableInt = 999
// returns an optional string
println(function(variableInt))

// Passing a non-initialised value
var anotherVariableInt:Int?
println(function(anotherVariableInt))

// Returning a non-initialised value
variableInt = 42
println(function(variableInt))


// The other place to use ? is// when chaining optional objects


class Location{var weather:Climate?; var name:String="Aberystwyth" }
class Climate {var temp:Int = 42;    var visability:String? }

var Here:Location = Location() // initialised

// Values fail gracefully when optional not initialised
println(Here.name)
println(Here.weather?.temp)

// What happens when optional class is initialised?
Here.weather = Climate() // initialised
println(Here.weather?.temp) // returns as optional even when int is non-op

// Initialise the inter in optional class
Here.weather?.temp = 21
println(Here.weather?.temp) // returns our value as optional

// What happens when optional is initialised?
Here.weather?.visability = "clear"
println(Here.weather?.visability)

// Also can call methods of the optional
println(Here.weather?.visability?.uppercaseString) // requires ? on the variable

