//: Playground - noun: a place where people can play

import UIKit

func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0 // The start of the array
    var upperBound = a.count // The end of the array
    // If we still have elements to search for in the array
    while lowerBound < upperBound {
        // Get the middle of the array
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        // If middle of array is the value we are searching for return it
        if a[midIndex] == key {
            return midIndex
        // Otherewise if the middle element is less then the value search the right side of the array
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        // Otherewise if the middle element is greater then the value search the left side of the array
        } else {
            upperBound = midIndex
        }
    }
    // If we dont find the value we are searching for return nil
    return nil
}


binarySearch([1,7,9,11,12,15,19], key: 7)
binarySearch([1.2, 2.2, 3.4], key: 1.2)