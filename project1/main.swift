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

var countryDictionary = ["IND":"India","CAD":"Canada","USA":"Unitted States"]

print(countryDictionary)
print(countryDictionary["USA"])
print(countryDictionary["USA"]!)
print(countryDictionary["PAK"] ?? "Country does not exists")

if let c = countryDictionary["PAK"]{
    print(c)
}

countryDictionary["PAK"] = "Pakistan"

print("=========================")

for (k, v) in countryDictionary{
    print(k, v)
}

var mySet = Set<String>()

mySet.insert("India")
mySet.insert("Canada")
mySet.insert("USA")
mySet.insert("Australia")

var mySet2 = Set<String>()

mySet2.insert("India")
mySet2.insert("Pakistan")
mySet2.insert("China")

let interSet = mySet.intersection(mySet2)
print(interSet)

let unionSet = mySet.union(mySet2)
print(unionSet)

let disJointSet = mySet.isDisjoint(with: mySet2)
print(disJointSet)

let subSet = mySet.subtracting(mySet2)
print(subSet)

let symetricSet = mySet.symmetricDifference(mySet2)
print(symetricSet)

var ss = Dictionary<String, Any>()

ss["Int"] = 10
ss["String"] = "Udhay"
ss["Dic"] = ["k":"v","k1":"v"]
ss["Tuple"] = (100,200)

for temp in ss{
    if temp.value is Int{
        print("I am Integer \(temp)")
    }else if(temp.value is String){
        print("I am String \(temp)")
    }else if(temp.value is Dictionary<String,String>){
        print("I am Dictionary \(temp)")
    }else if(temp.value is (Int,Int)){
        print("I am Tuple \(temp)")
    }
}
