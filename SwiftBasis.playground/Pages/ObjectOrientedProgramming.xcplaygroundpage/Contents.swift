import Foundation

/*
 Object Oriented Programming
 
 During the life of the app, we create and destroy objects
 Create = Initialize (init) = Allocate (add object to memory)
 Destroy = Deinitialize (deinit) = Deallocate (removing object from memory)
 
 Automatic Reference Counting (ARC) = A live count of the number of objects in memory.
    The more objects in memory (the higher the count of ARC) the slower the app performs.
    We would like to keep the ARC as low as possible.
    So, we want to create objects only when we need them and destroy objects as we no longer need them.
    For example, if an app has 2 screens and the user is moving from screen 1 to screen 2, we only want to
        allocate to memory screen 2 WHEN we need it (ie when the user clicks a button to segue to screen 2).
        When we get to screen 2, we may want to deallocate screen 1.
 
 There are 2 types of memory: Stack & Heap. Only objects in the Heap are counted towards ARC
    Objects in the Stack: String, Bool, Int, most basic types of data, Struct, Enum, Array
    Objects in the Heap: Functions, Classes, Actors
 
 The iPhone is a "multi-threaded environment"
    There are multiple "threads" or "engines" running simultaneously,
    so if you allocate your code to run on different threads, you'll have better performance.
    Each thread has its own Stack but there is only 1 Heap for all threads.
 
    Therefore, the Stack is faster (and has lower memory footprint) than the Heap, so optimizing the Heap is important.
        Heap is slower, has higher memory footprint, might cause threading issues (multiple threads accessing the same data at the same time).
    
 Value vs Reference types
    Objects in the Stack are "Value" types.
        When you edit a Value type, you create a copy of it with new data
        (if you change a Bool value from true to fale, you create a new version of the object with the new value)
     
    Objects in the Heap are "Reference" types.
        When you edit a Reference type, you edit the existing object that you are referencing, not creating a new copy of it.
        This "reference" is called a "pointer" because it "points" to an object in the Heap (in memory)
    
 */

struct MyFirstObject {
    let title: String = "Hello, World"
}

class MySecondObject {
    let title: String = "Hello, World"
}

/*
 ELI5 Class vs Struct
    Imagine a school and in the school there are 3 classrooms.
    Within each class, there are quizzes.
    During the day, the teacher will hand out many different quizzes to every different class.
    The students will answer the quizzes and return them back to the teacher.
    
    school = our app
    classroom = Class
    quiz: Struct
 
    So, every time we hand out a new quiz, we make 20 copies of it for each student, it's data that we pass around, move, edit etc.; but we're not making copies of the classroom. That remains 1.
    
    So, we have a classroom and there are many different actions that occur in that classroom.
    In code, we create a class and can perform actions within that class.
    
    There are many different types of quizzes. The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
    In code, we create many structs and pass them around our app with ease.
 
So, a class is like the mould, and the struct is a copy we create of that mould maybe?

We want to use a class for things like: Manager, DataService, Service, Factory, ViewModel.
    Objects that we create and want to perform actions inside.
 
We want to use a struct for things like: Data models. Objects we create and pass around our app.
 
 */
