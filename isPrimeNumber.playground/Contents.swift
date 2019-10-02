import UIKit

var num:Int = 11
var delta:Int = (num + 1)/2
var n:Double
var x:Int = 0
var y:Double
var b:Double = 0.0
func isOdd(num: Int)->Bool{
    if(num % 2 != 0){
        return true
    } else {
        return false
    }
}

let boolType: Bool = isOdd(num: num)
print(boolType)

n = sqrt(Double(num))
b = floor(n)

if boolType == false {
    exit(0)
} else {
    for _ in Int(ceil(b))...delta{
        if (b == n){
            x = Int(n)
            y = 0
            print("The number \(num) is prime.")
            break
        }
            
        x = Int(b) + 1
            
        y = sqrt(pow(Double(x), 2) - Double(num))
            
        if (floor(y) == y){
            x = Int(b) + 1
            y = sqrt(pow(Double(x), 2) - Double(num))
            print(x, y)
            print("The number \(num) is prime.")
            break
        }
            
        b = Double(x)
       
    }
}

