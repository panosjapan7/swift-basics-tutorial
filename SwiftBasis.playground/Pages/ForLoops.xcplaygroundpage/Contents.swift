import Foundation

//for item in 0..<100 {
//    print(item)
//}

let myArray: [String] = ["Alpha", "Beta", "Gamma","Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray{
    print(item)
    
    if item == "Gamma"{
        secondArray.append(item)
    }
}

print(secondArray)


struct LessonModel{
    let title: String
    let isFavorite: Bool
}

let allLessons: [LessonModel] = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true),
]

var favoriteLessons:[LessonModel] = []
for lesson in allLessons {
    if lesson.isFavorite{
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)

// This gives you access to both the lesson data but also its index
for (index, lesson) in allLessons.enumerated(){
    
    if index == 1 {
//        break
        continue // it's going to skip printing the lesson with index 1 and continue to the next iteration
    }
    print("index: \(index), lesson: \(lesson)")
}
