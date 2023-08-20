import Foundation

/*
 Structs are fast! (so we like to use them)
 Structs are stored in the Stack (memory)
 Objects in the Stack are Value types
 Value types are copied & mutated
 */

struct Quiz {
    let title: String
    let dateCreated: Date
    let isPremium: Bool? // this is optional but it is required to pass it in when you call it even if as nil (unlike TypeScript where you can skip it and not pass it in at all)
    
    // Structs have implicit init - so no need to add the following code when creating a struct:
//    init(title: String, dateCreated: Date){
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
    // The reason we would write this init block of code instead of letting Swift do an implicit init is in case we want to initialize some variables.
    init(title: String, dateCreated: Date = .now, isPremium: Bool?){
            self.title = title
            self.dateCreated = dateCreated
            self.isPremium = isPremium
        }
    // Now we could do this let "myQuiz: Quiz = Quiz(title: "Quiz1")" without needing to pass in a value to dateCreated (line:30)
}

let myObject: String = "Hello, world!"

let myQuiz: Quiz = Quiz(title: "Quiz1", dateCreated: .now, isPremium: true)

// ---------------------------------------------------------------------------------

// "Immutable struct" = all "let" constants = none of it is mutable
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Panos", isPremium: false)

func markUserAsPremium(){
    print(user1)
}

markUserAsPremium()

// "mutable struct" from within the struct
struct UserModel4 {
    let name: String
    var isPremium: Bool
    
    mutating func markUserAsPremium(){
        isPremium = true
    }
    
}
