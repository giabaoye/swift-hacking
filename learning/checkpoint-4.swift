//
//  checkpoint-4.swift
//  learning
//  Problem
//  Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number.
//  If the number is less than 1 or greater than 10,000 -> throw an “out of bounds” error.
//  Consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
//  If you can’t find the square root, throw a “no root” error.

//  Created by K. on 29/9/26.
//

enum IntError: Error {
    case outOfRange
    case noRoot
}

func integerSquareRoot(of number: Int) throws -> Int {
    var start = 1
    var end = number
    
    while start <= end {
        let mid = start + (end - start) / 2
        if mid * mid == number {
            return mid
        }
        if mid * mid < number {
            start = mid + 1
        } else {
            end = mid - 1
        }
    }
    throw IntError.noRoot
}

class CheckPointFour {
    func exec(_ number: Int) throws ->  Int {
        if (number < 1 || number > 10_000) {
            throw IntError.outOfRange
        }
        
        do {
            return try integerSquareRoot(of: number)
        } catch IntError.noRoot {
            throw IntError.noRoot
        }
        
    }
}
