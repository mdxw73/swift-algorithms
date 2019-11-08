//
//  main.swift
//  StandardAlgorithms
//
//  Created by Obied, Zack (NA) on 05/11/2019.
//  Copyright © 2019 Obied, Zack (NA). All rights reserved.
//

import Foundation

let sorting = Sorting()
let searching = Searching()
let data = [3, 1, 7, 5, 19, 12, 4, 2]
let number = 5

print("Bubble Sort:")
print("Description: Compares contiguous elements and swaps if the left element is bigger than the right one. Repeats until no swaps occur.")
print("Big O time complexity: Best: O(n), Average: O(n^2), Worst: O(n^2)")
print("Big O space complexity: Best: O(1), Average: O(1), Worst: O(1)")
print("Input: \(data)")
print("Output: \(sorting.bubbleSort(data: data))\n")

print("Merge Sort:")
print("Description: Splits the array up into smaller arrays recursively until each array consists of just one element. It then merges the single-element arrays together with the elements in order.")
print("Big O time complexity: Best: O(n log(n)), Average: O(n log(n)), Worst: O(n log(n))")
print("Big O space complexity: Best: O(n), Average: O(n), Worst: O(n)")
print("Input: \(data)")
print("Output: \(sorting.mergeSort(data: data))\n")

print("Quick Sort:")
print("Description: Takes the first element as a pivot and creates two arrays: one of bigger elements and one of smaller elements than the pivot. It repeats this recursively on the pivot of each sublist until each sublist has just one element. It then appends the elements in order to a new array.")
print("Big O time complexity: Best: O(n log(n)), Average: O(n log(n)), Worst: O(n^2)")
print("Big O space complexity: Best: O(n log(n)), Average: O(n log(n)), Worst: O(n log(n))")
print("Input: \(data)")
print("Output: \(sorting.quickSort(data: data))\n")

print("Insertion Sort:")
print("Description: It takes a temporary value and then checks whether the element before it is bigger, and if so, it moves the element before it up. It does this with one element at a time starting with the second element until it reaches the end of the array at which point the array is sorted.")
print("Big O time complexity: Best: O(n), Average: O(n^2), Worst: O(n^2)")
print("Big O space complexity: Best: O(1), Average: O(1), Worst: O(1)")
print("Input: \(data)")
print("Output: \(sorting.insertionSort(data: data))\n")

print("Linear Search:")
print("Description: Checks each item in an array one after another to see if it is equal to the input.")
print("Big O time complexity: Best: O(1), Average: O(n), Worst: O(n)")
print("Big O space complexity: Best: O(1), Average: O(1), Worst: O(1)")
print("Input: \(data), Input: \(number)")
print("Output: \(searching.linearSearch(data: data, number: number))\n")

print("Binary Search:")
print("Description: takes the middle item, checks if it is smaller/bigger/equal to the input. If it is bigger the process is repeated on the elements below the midpoint; if it's smaller the process is repeated on the elements above the midpoint; once the midpoint is equal to the input or the lower and upper bounds surpass one another: the program ends.")
print("Precondition: Only works on sorted list")
print("Big O time complexity: Best: O(1), Average: O(log(n)), Worst: O(log(n))")
print("Big O space complexity: Best: O(1), Average: O(1), Worst: O(1)")
print("Input: \(sorting.insertionSort(data: data)), Input: \(number)")
print("Output: \(searching.binarySearch(data: sorting.insertionSort(data: data), number: number))")
