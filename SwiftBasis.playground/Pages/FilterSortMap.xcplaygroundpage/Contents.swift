import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers:[DatabaseUser] = [
    DatabaseUser(name: "Panos", isPremium: true, order: 4),
    DatabaseUser(name: "John", isPremium: false, order: 1),
    DatabaseUser(name: "Nick", isPremium: true, order: 3),
    DatabaseUser(name: "Meily", isPremium: true, order: 1000),
    DatabaseUser(name: "Emily", isPremium: false, order: 2),
]

// Version 1
//var allPremiumUsers: [DatabaseUser] = []
//for user in allUsers {
//    if user.isPremium {
//        allPremiumUsers.append(user)
//    }
//}

// Version 2 with filter
//var allPremiumUsers: [DatabaseUser] = allUsers.filter{ user in
//    if user.isPremium{
//        return true
//    }
//    return false
//
//}

// Version 3 with filter - shorter
var allPremiumUsers: [DatabaseUser] = allUsers.filter{ user in
        return user.isPremium
}
//print(allPremiumUsers)

// Version 4 with filter - shortest (called shorthand)
// The $0 represents the "user in"
var allPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })
//print(allPremiumUsers2)

// sort
var orderedUsers: [DatabaseUser] = allUsers.sorted{ user1, user2 in
    return user1.order < user2.order
}

// sort - shorthand version
var orderedUsers2: [DatabaseUser] = allUsers.sorted(by: {$0.order < $1.order})


// map
var usernames: [String] = allUsers.map{ user in
    
    return user.name
}

// map - shorthand version
var usernames2:[String] = allUsers.map({ $0.name })

print(usernames2)


