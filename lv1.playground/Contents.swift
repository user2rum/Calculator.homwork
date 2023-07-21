class Calculator {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func subtract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    func divide(_ a: Double, _ b: Double) -> Double? {
        guard b != 0 else {
            print("Error: Cannot divide by zero.")
            return nil
        }
        return a / b
    }
}

let calculator = Calculator()

let a = 20.0
let b = 4.0

let addResult = calculator.add(a, b)
let subtractResult = calculator.subtract(a, b)
let multiplyResult = calculator.multiply(a, b)
let divideResult = calculator.divide(a, b)

print("Addition Result: \(addResult)")
print("Subtraction Result: \(subtractResult)")
print("Multiplication Result: \(multiplyResult)")
if let divideResult = divideResult {
    print("Division Result: \(divideResult)")
}
