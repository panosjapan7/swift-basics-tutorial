import Foundation

var username: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    return  username
}

func getUserIsPremium() -> Bool {
    return userIsPremium
}

// Limited to 1 return type
func getUserInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return name
}

// Returns a tupple which combines multiple pieces of data
func getUserInfo1() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}

var userData1: String = username
var userData2: (String, Bool) = (username, userIsPremium)

let info1 = getUserInfo1()
let name1 = info1.0 // becomes difficult to access if you access the data by number though

func getUserInfo2() -> (name:String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    
    return (name, isPremium)
}
let info2 = getUserInfo2()
let name2 = info2.name // Easier to access

func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (username, userIsPremium, userIsNew)
}

// A tuple that takes in tuples
func doSomethingWithgetUserInfo4(info: (name: String, isPremium: Bool, isNew: Bool)){
    
}


