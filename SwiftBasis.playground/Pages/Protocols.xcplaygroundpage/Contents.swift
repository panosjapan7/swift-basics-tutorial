import Foundation

struct EmployeeModel: EmployeeHasAName {
    let title: String
    var name: String
}

protocol EmployeeHasAName {
    var name: String { get set }
}
