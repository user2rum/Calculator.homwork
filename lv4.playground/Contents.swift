class AbstractOperation {

    func operate(firstNumber: Double, secondNumber: Double) -> Double {
        // 기본적으로 아무런 연산도 하지않습니다.
        return 0
    }

}

class AddOperation: AbstractOperation {

    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber + secondNumber
    }

}

class SubtractOperation: AbstractOperation {

    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber - secondNumber
    }

}

class MultiplyOperation: AbstractOperation {

    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        return firstNumber * secondNumber
    }

}

class DivideOperation: AbstractOperation {

    override func operate(firstNumber: Double, secondNumber: Double) -> Double {
        if secondNumber != 0 {
            return firstNumber / secondNumber
        } else {
            // 0으로 나누는 경우 에러 처리
            return 0
        }
    }

}

class Calculator {

    func calculate(operation: AbstractOperation, firstNumber: Double, secondNumber: Double) -> Double {
        return operation.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }

}

let calculator = Calculator();

let addOperation = AddOperation()

let addResult = calculator.calculate(operation: addOperation, firstNumber: 5, secondNumber: 3)

print("addResult : \(addResult)")
