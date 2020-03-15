import Vapor

func calculate_score(choices: Array<Job>) -> Array<Job> {
    let choices = choices.sorted(by: {$0.pay > $1.pay})
    print(choices)
    return choices
}

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    let compareController = CompareController()
    router.get("jobs", use: compareController.index)
}
