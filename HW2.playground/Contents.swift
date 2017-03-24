//: Playground - noun: a place where people can play

import UIKit





func sortArray(array1:[Int], array2:[Int]) -> [Int]
{
    let setArray1 = Set(array1)
    let setArray2 = Set(array2)
    
    let xx = setArray1.union(setArray2)
    
    var setToArray = Array(xx)
    
    
    for i in 0..<setToArray.count
    {
        for j in 0..<setToArray.count - i - 1
        {
            var tmp = 0
            if setToArray[j] > setToArray[j + 1]
            {
                tmp = setToArray[j]
                setToArray[j] = setToArray[j + 1]
                setToArray[j + 1] = tmp
            }
        }
    }
    
    
    return setToArray
}

sortArray(array1: [1,5,3], array2: [2,4,3])















