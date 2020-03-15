import Vapor

final class Job: Content {
    let pay: Int
    
    
    init(pay: Int) {
        self.pay = pay
    }
}
