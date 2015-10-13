//
//  main.swift
//  calculator
//
//  Created by studentuser on 10/8/15.
//  Copyright © 2015 kartikey. All rights reserved.
//

import Foundation

func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

func convert(incoming:String) -> Int {
    return NSNumberFormatter().numberFromString(incoming)!.integerValue
}
 

print("Simple Calculator:")

let ip = input()

        
let arr = ip.characters.split{$0 == " "}.map(String.init)

if arr.count > 1 {
    
    if arr.count == 2 {

        if arr[1] == "fact" {
                var fact = 1
    
            var i = (arr[0] as NSString).integerValue
        print(" i = \(i)")
        
            for i; i >= 1; i-- {
                fact = fact * i
            }
        
           print("Result = \(fact)")
        }
    
    if arr[1] == "count" {
                
                
              print("Result = 1")
    }
    
    if arr[1] == "avg" {
                    
             print("Result = \(arr[0])")
    }


        
    
    }
            
    if arr.count > 2 {
            
        var operand = arr[arr.count-1]
            
            if operand ==  "avg"  {
                
                var i = arr.count - 2
                var base = arr.count - 1
                
                var res = 0
                
                for i; i >= 0; i-- {
                    var x = (arr[i] as NSString).integerValue
                    res = res + x
                }
                
                res = res / base
                print("Result = \(res)")
      
            }
            
            if operand ==  "count"  {
        
                var res = arr.count - 1
                print("Result = \(res)")
            }
    }
    
}

else {
    let ip2 = input()
    let ip3 = input()
            
    var var1 = (ip as NSString).doubleValue
    var var2 = (ip3 as NSString).doubleValue
    
        switch ip2 {
            case "+": print("Result = \(var1+var2)")
            case "-": print("Result = \(var1-var2)")
            case "*": print("Result = \(var1*var2)")
            case "/": print("Result = \(var1/var2)")
            case "%": print("Result = \(var1%var2)")
            default: print("Invalid operand")
        }
    
    
}

