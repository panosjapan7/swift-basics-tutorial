import Foundation

/*
 Classes are not as fast as structs
 Classes are stored in the Heap (memory)
 Objects in the Heap are Reference types
 Reference types point to an object in memory and update the object in memory (so we don't create a new copy of the object)
 */

// Let's say this contains all the data that is needed for some screen
// Classes don't have an implicit init
class ScreenViewModel {
    let title: String
    var showButton: Bool
    
    init(title: String, showButton: Bool){
        self.title = title
        self.showButton = showButton
    }
    
    deinit {
        // this block of code runs as the object is being removed from memory
        
    }
    
    func hideButton(){
        showButton = false
    }
    
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }
}

let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
