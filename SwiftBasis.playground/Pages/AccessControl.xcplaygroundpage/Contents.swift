import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavorite: Bool
    
    func updateFavoriteStatus(newValue: Bool) -> MovieModel{
        return MovieModel(title: title, genre: genre, isFavorite: newValue)
    }
    
    mutating func updateFavoriteStatus2(newValue: Bool){
        isFavorite = newValue
    }
}

enum MovieGenre{
    case comedy, action, horror
}

class MovieManager{
    
    // public by default
    var movie1: MovieModel
    
    //private - can be accessed only in this class
    private var movie2: MovieModel
    
    //read is public, set is private
    private(set) var movie3: MovieModel
    
    func updateMovie3(isFavorite: Bool){
        movie3.updateFavoriteStatus2(newValue: isFavorite)
    }
    
    init(){
        movie1 = MovieModel(title: "Avatar", genre: .action, isFavorite: false)
        movie2 = MovieModel(title: "Step Brothers", genre: .comedy, isFavorite: false)
        movie3 = MovieModel(title: "Avengers", genre: .action, isFavorite: false)
    }
}

let manager = MovieManager()

//manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: true)
manager.movie1.updateFavoriteStatus2(newValue: true)

// Inaccessible bc it's private var
//manager.movie2.updateFavoriteStatus2(newValue: true)

manager.updateMovie3(isFavorite: true)

print(manager.movie1)
print(manager.movie3)

// Version 1
// We can GET and SET value from outside the class object
let movie1 = manager.movie1
manager.movie1 = manager.movie1.updateFavoriteStatus(newValue: false)

// Version 2
// We can't GET or SET value from outside the class object
let movie2 = manager.movie2 // error - won't compile
manager.movie2 = manager.movie2.updateFavoriteStatus(newValue: false) // error - won't compile

// Version 3 (Best practice)
// We can GET but can't SET value from outside the class object
let movie3 = manager.movie3
manager.movie3 = manager.movie3.updateFavoriteStatus(newValue: false) // error - won't compile
manager.updateMovie3(isFavorite: true)
print(movie1)

// private & public are by far the most common access controls but there are many others
// open, public, internal, fileprivate, private and more

// Rule of thumb: We want everything to be as private as possible
