import Foundation

var fruitsArray:[String] = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsArray) // ["Apple", "Orange", "Banana", "Apple"]

var fruitsSet:Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet)

// The colon means that this is a dictionary.
// The keys are of type String.
// The values are of type Boolean.
var myFirstDictionary: [String:Bool] = [
    "Apple": true,
    "Orange":false
]
let item = myFirstDictionary["Orange"]
print(item) // prints false

var mySecondDictionary: [Int:String] = [
    0: "Apple",
    166: "Banana"
]
let item2 = mySecondDictionary[166]
print(item2) // prints "Banana"

// Add new value to a dictionary
mySecondDictionary[100] = "Mango"
print(mySecondDictionary) // Prints [0: "Apple", 100: "Mango", 166: "Banana"]

// Remove a value from a dictionary
mySecondDictionary.removeValue(forKey: 100)
print(mySecondDictionary) // Prints [0: "Apple", 166: "Banana"]

// Dictionary with a custom type
struct PostModel {
    let id: String
    let title: String
    let count: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", count: 5),
    PostModel(id: "def456", title: "Post 2", count: 7),
    PostModel(id: "xyz987", title: "Post 3", count: 123),
]

if postArray.indices.contains(1){
    let item = postArray[1]
    print(item)
}

var postDictionary: [String: PostModel] = [
    "abc123":PostModel(id: "abc123", title: "Post 1", count: 5),
    "def456":PostModel(id: "def456", title: "Post 2", count: 7),
    "xyz987":PostModel(id: "xyz987", title: "Post 3", count: 123),
]

let myNewItem = postDictionary["def456"]
print(myNewItem)
