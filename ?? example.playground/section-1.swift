// ?? example

// Variable not initialised
var intVar:Int?  = 3

// Using standard C notation 
// ( Boolean_test ? true : false )

let Int_1 = (intVar == nil ? 42 : intVar)
// gives an optional result, Int?
println(Int_1)


// Doing the same thing with Forced unwrapping using !

let Int_2 = (intVar == nil ? 42 : intVar!)
// ! forces an unwrapped Int result - now non-optional
println(Int_2)


// Now using ?? is equivalent to Int_2

let Int_3 = intVar ?? 42
// equivalent to Int_2 with an non-optional Int result
println(Int_3)

// NOW initialising the variable above

// Example of a practical use case, providing a default value.
var variableInt :Int?  = 42
let aConstant_NotOptional =  (variableInt ?? 0) + 1
println(aConstant_NotOptional)
