//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */
// "The line is:\n1. Victoria\n2. Danny\n3. Lyel"

func stringForDeliLine(line:[String])->String
{
    if line.count <= 0 {return "The line is currently empty."}
    
    
    var resultString: String = "The line is:"
    
    for var i = 0; i < line.count; i++ {
        let j = i+1
        resultString += "\n\(j). \(line[i])"
    }
    return resultString
}

func addName(name:String, toDeliLine:[String])->[String] {
//    var newLine:[String] = line + [name]
//    let nameItem = "\n\(toDeliLine.count + 1). \(name) "
    return toDeliLine + [name]
}

func serveNextCustomerInDeliLine(line:[String])->[String] {
    if line.count <= 0 {return Array()}
    
    var mutableLine = line
    let nextCustomer = mutableLine.removeFirst()
    print("It is your turn, \(nextCustomer).")
    
    return mutableLine
}
