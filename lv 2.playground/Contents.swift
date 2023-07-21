class Calculator {
    
    var firstNum: Double
    var secondNum: Double
    
    init(firstNum: Double, secondNum: Double) {
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    
    func calculate(operator: String, firstNum: Double, secondNum: Double) -> Double? {
        switch `operator` {
        case "+":
            return firstNum + secondNum
        case "-":
            return firstNum - secondNum
        case "*":
            return firstNum * secondNum
        case "/":
            if secondNum != 0 {
                return firstNum / secondNum
            } else {
                return nil // 0으로 나누는 경우는 nil을 리턴하여 에러 처리
            }
        default:
            return nil // 정확한 operator가 전달되지 않을 시 nil을 리턴
        }
    }
}

let calculator = Calculator(firstNum: 50, secondNum: 10)
if let addResult = calculator.calculate(operator: "+", firstNum: calculator.firstNum, secondNum: calculator.secondNum) {
    print("addResult: \(addResult)")
}

if let subtractResult = calculator.calculate(operator: "-", firstNum: calculator.firstNum, secondNum: calculator.secondNum) {
    print("subtractResult: \(subtractResult)")
}

if let multiplyResult = calculator.calculate(operator: "*", firstNum: calculator.firstNum, secondNum: calculator.secondNum) {
    print("multiplyResult: \(multiplyResult)")
}

if let divideResult = calculator.calculate(operator: "/", firstNum: calculator.firstNum, secondNum: calculator.secondNum) {
    print("divideResult: \(divideResult)")
} else {
    print("Error: Cannot divide by zero.")
}
