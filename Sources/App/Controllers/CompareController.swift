import Vapor

final class CompareController {
    /// Returns a list of all `Todo`s.
    func index(_ req: Request) throws -> [Job] {
         let choices = [
                   Job(pay: 100000),
                   Job(pay: 55),
                   Job(pay: 10000),
               ]
               
        return calculate_score(choices: choices)
    }
}
