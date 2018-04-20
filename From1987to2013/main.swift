//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation




var validInput = 0
while 1 == 1 {
    
    guard let input = readLine() else {
        continue
    }
    
    guard let intInput = Int(input) else {
        continue
    }
    
    if intInput < 0 || intInput > 10000 {
        continue
    }
    
    validInput = intInput
    break
}


var nextYear = validInput + 1
while 1 == 1 {
    
    var digit1 = 0
    var processYear = 0
    if nextYear / 1000 <= 10 {
        digit1 = nextYear / 1000
        processYear = nextYear % 1000
    }
    
    let digit2 = processYear / 100
    processYear = processYear % 100
    
    let digit3 = processYear / 10
    processYear = processYear % 10
    
    let digit4 = processYear / 1
    
    
    if digit1 == 0 && digit2 == 0 && digit3 == 0 || digit1 == 0 && digit2 == 0 {
       print("The next year with distinct digits is \(nextYear)")
        break
    }
    
    if digit1 == digit2 || digit1 == digit3 || digit1 == digit4 {
      nextYear += 1
      continue
    }
   
    if  digit2 == digit3 || digit2 == digit4 {
        nextYear += 1
        continue
    }
    
    if  digit3 == digit4 {
        nextYear += 1
        continue
    }
    
    print("The next year with distinct digits is \(nextYear)")
    break
    
}


















