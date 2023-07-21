class AddOperation {
    
    var firstNum:Double
    var secondNum:Double
    
    init(firstNum:Double, secondNum:Double){
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    
    func operate() -> Double{
        return firstNum + secondNum
    }
    
}

class SubtractOperation {
    
    var firstNum:Double
    var secondNum:Double
    
    init(firstNum:Double, secondNum:Double){
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    func operate() -> Double{
        return firstNum - secondNum
    }
}

class MultiplyOperation {
    
    var firstNum:Double
    var secondNum:Double
    
    init(firstNum:Double, secondNum:Double){
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    func operate(){
        
    }
}

class DivideOperation {
    
    var firstNum:Double
    var secondNum:Double
    
    init(firstNum:Double, secondNum:Double){
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    func operate(){
        
    }
}

class Calculator {
    
    var firstNum:Double
    var secondNum:Double
    
    init(firstNum:Double, secondNum:Double){
        self.firstNum = firstNum
        self.secondNum = secondNum
    }
    
    func calculate(type:String) -> Double {
        
        var result = 0
        
        if type == "add"{
            var temp = AddOperation(firstNum: firstNum, secondNum: secondNum)
            result = Int(temp.operate())
        } else if type == "sub"{
            var temp = SubtractOperation(firstNum: firstNum, secondNum: secondNum)
        } else if type == "mul"{
            var temp = MultiplyOperation(firstNum: firstNum, secondNum: secondNum)
        } else if type == "div"{
            var temp = DivideOperation(firstNum: firstNum, secondNum: secondNum)
        } else {
            return 0.0
        }
        return Double(result)
    }
    
}


var calculator = Calculator(firstNum: 5, secondNum: 5)

print(calculator.calculate(type: "add"))
