import Foundation

class SumSingleton {
    let sum_value: Int
    
    init(sum: Int) {
        self.sum_value = sum
    }
}

class SumSingletonManager {
    
    static let shared = SumSingletonManager()
    private init() { }
    
    var sum: SumSingleton? = nil
}
