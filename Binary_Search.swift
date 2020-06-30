//: [Previous](@previous)

import Foundation

var str = "Hello, Binary Search"

//: [Next](@next)


// Return the index in the array, of the desired value
// If the value can't be found, return nil
func binarySearch(_ array: [Int], value: Int) -> Int? {
    // Your code goes here
    var lowIndex = 0
    var highIndex = array.count - 1;
    
    while lowIndex <= highIndex  {
        
        let midIndex = (lowIndex + highIndex) / 2 ;
        
        if array[midIndex] == value {
            return midIndex
        } else if array[midIndex] < value {
            lowIndex = midIndex + 1
            
        }else{
            highIndex = midIndex - 1
        }
        
        
    }
    
    return nil
}

// Test cases
let testArray = [1, 3, 9, 11, 15, 19, 29,99]
let testVal1 = 25
let testVal2 = 15
let testVal3 = 99
print(binarySearch(testArray, value: testVal1)) // Should be nil
print(binarySearch(testArray, value: testVal2)!) // Should be 4
print(binarySearch(testArray, value: testVal3)!)
