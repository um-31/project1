//
//  main.swift
//  project1
//
//  Created by hhh on 2019-06-11.
//  Copyright © 2019 hhh. All rights reserved.
//

import Foundation

//var a: [Int]!
var a = [5,24,67,32,88,90,76,78,43,56]
for x in a{
    print(x)
}
/*func sortArray(arr: [Int]!) -> [Int] {
    if var c = arr{
        
        var a1: Int
        var b1: Int
        var temp: Int
        for a1 in a{
            for b1 in 0...(a.count-a1-1){
                temp = a[b1];
                a[b1] = a[b1+1];
                a[b1+1] = temp;
            }
        }
    }
}*/

if a.isEmpty{
    print("A is empty")
}else{
    print("A contains values")
}

var country: [String]

//var b: [String] = [] method1
//b = [String]() method2

//var x = Int() method to declare without initialization

country = [String]()

country.append("India")
country.append("Canada")
country.append("USA")

func printN(n: Int){
    if(n == 0){
        return
    }
    else{
        printN(n: n-1)
        print(n)
    }
}

func printSum(n: Int) -> Int{
    var sum = 0
    if(n == 0){
        return 1
    }
    else{
        sum = n * printSum(n: n-1)
    }
    return sum;
}

func revArray(arr: [String], index: Int){
    if arr.isEmpty{
        print("Empty")
    }else{
        if index == -1{
            return
        }else{
            print(arr[index])
            revArray(arr: arr, index: index - 1)
    }
}
}
print("======================")
//printN(n: 5)
print(printSum(n: 5))
print(revArray(arr: country, index: country.count-1))
