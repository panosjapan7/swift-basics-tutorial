import Foundation

func myFirstFunction(){
    print("Hi there!")
}

func getUserName() -> String {
    let username:String = "Panos"
    return username
}

func checkIfUserIsPremium() -> Bool {
    return true
}

let isIt:Bool = checkIfUserIsPremium()



func doSomething() -> String{
    var title = "Panos"
    
    // make sure that title == "Panos", if it is, move below line 26 and continue, else execute else
    guard title == "Panos" else {
        return "Not Panos"
    }
    
    return  "It's Panos"
}

let number1 = 1
let number2 = 2

// Calculated Variable
var calulatedNumber: Int {
    return number1 + number2;
}

print(calulatedNumber)


