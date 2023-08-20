import Foundation

// There's always a value and it is Boolean
let myBool: Bool = false

// Optionals: We don't know if there is a value (so it could be null/nil), but if there is, it is a Boolean
var otherBool: Bool? = false

print(otherBool ?? false)
otherBool = nil
print(otherBool)


let newValue1: Bool? =  nil
let newValue2: Bool? = newValue1
// nil coalsecing operator
// newValue3 value has the value of newValue2 IF there is one; otherwise, it is equal to false
let newValue3: Bool = newValue2 ?? false
print("newValue3:", newValue3)

var myString: String? = nil
let newString:String = myString ?? "default value"
print("newString:", newString)

var userIsPremium: Bool? = nil
func checkIfUserIsPremium() -> Bool {
    return userIsPremium ?? false
}

// If-let
// When if-let is successful, enter the closure
func checkIfUserIsPremium2() -> Bool{
    
    //if there is a value in userIsPremium, let newValue equal that value
    if let newValue = userIsPremium{
        // Here we have access to the non-optional value of newValue
        return newValue
    }else{
        return false
    }
}

// Same thing with different syntax
func checkIfUserIsPremium3() -> Bool {
    if let userIsPremium = userIsPremium  {
        return userIsPremium
    }
    return false
}
print(checkIfUserIsPremium3())

// Guard
// When guard is a failure, enter the closure
func checkIfUserIsPremium4() -> Bool {
    
    // Make sure there is a value; If there is, let newValue equal that value and enter the closure.
    guard let newValue = userIsPremium else {
        return false
    }
    // Else, return out of the function
    return newValue
}

// Complex if-let
var userIsNew: Bool?  = true
var userDidCompleteOnboarding: Bool? = false
var userFavoriteMovie: String? = nil

func checkIfUserIsSetup() -> Bool {
    if let userIsNew = userIsNew, let userDidCompleteOnboarding = userDidCompleteOnboarding, let userFavoriteMovie = userFavoriteMovie{
        // userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        //userFavoriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnboarding: userDidCompleteOnboarding,
            userFavoriteMovie: userFavoriteMovie)
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnboarding == nil OR
        //userFavoriteMovie == nil
        return false
    }
    
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavoriteMovie: String) -> Bool{
    if userIsNew && userDidCompleteOnboarding{
        return true
    }
    return false
}
