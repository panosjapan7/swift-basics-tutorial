import Foundation

let apple:String = "Apple"
let orange:String = "Orange"

let fruits: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange] // this is most common way to write the type of array of string values
var fruits3: Array<String> = [apple, orange]

func doSomething(value: [String]){
    
}

let count = fruits3.count
let firstItem = fruits3.first
let lastItem = fruits3.last
print(count)
print(firstItem)
print(lastItem)

//fruits3 = fruits3 + ["Banana"]
// Add 1 item at a time
//fruits3.append("Banana") // Adds the item at the end of the array
//fruits3.append("Mango")
fruits3.append(contentsOf: ["Banana", "Mango"])
fruits3.insert("Watermelon", at:2) // Adds the item at index 2
fruits3.insert(contentsOf: ["Pear", "Tangerine"], at:3) // Adds the item at index 3
fruits3.remove(at: 4) // Removes item at index 4
print(fruits3)
print(fruits3[1])
print(fruits3.count) // = the array.length in JavaScript

// Arrays with custom types
struct ProductModel{
    let title: String
    let price: Int
}

var myProducts:[ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 10),
    ProductModel(title: "Product 3", price: 100),
    ProductModel(title: "Product 4", price: 2),
    ProductModel(title: "Product 5", price: 520),
]


// set vs array
// In array we can have a duplicate of the same value ("Apple")
var fruitsArray:[String] = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsArray) // ["Apple", "Orange", "Banana", "Apple"]

// In a set it will keep the "Apple" value once. Also, sets don't have an order (look at what it prints)
var fruitsSet:Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet) // ["Orange", "Apple", "Banana"]
