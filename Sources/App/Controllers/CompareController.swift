import Vapor

func calculate_score(choices: Array<Job>) -> Array<Job> {
    //TODO: Compute Average Score across all
    
    //TODO: Compute score against average for each factor
    
    //TODO: Compute score based on importance of each factor
    //TODO: Find percentile score based on average of other scores
    
    let choices = choices.sorted(by: {$0.pay > $1.pay})
    print(choices)
    return choices
}

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
