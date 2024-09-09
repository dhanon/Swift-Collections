import UIKit

//Arrays in Swift

// Defining an array by specifying the type
var arr1:[Int] = [10, 5, 19, 12, 10, 77]
print("Contents of arr1 :", arr1)

// Defining an array without specifying the type
var arr2 = ["Anon", "Deloar", "Hosen"]
print("\nContents of arr1 :", arr2)

// Defining an array with a single value
var arr3 = Array(repeating: "Swift Tutorials", count: 3)
print("\nContents of arr1 :", arr3)


// Accessing and ModifyingArrays in Swift

var myArray: [Int] = [33, 44, 55, 66, 77]

print("\nArray Element Are:", myArray)
print("\nArray Element:", myArray[2])

myArray [3] = 79
print("\nModified Array Element:", myArray[3])

myArray.append(90)
myArray.append(1)
print("\nAfter Adding New Elements in the Array:", myArray)

myArray.insert(100, at: 4)
print("\nAfter Inserting New Elements in the Array:", myArray)

myArray += [300]
myArray += [900]
print("\nAfter Adding New Elements in the Array Using Assignment Operator.:", myArray)

print("\nPrint Array Elements Using For Loop:")

for a in myArray{
    
    print(a)
}

print("\nArray Elements with their index value:")

for (index, element) in myArray.enumerated(){
    
    print("Value at index = \(index) is \(element)")
}

print("\nArray Element Are Using While Loop:")

var index = 0

while index < myArray.count{
    
    print(myArray[index])
    index += 1
}

var someArray: [String] = ["Deloar", "Hosen", "Anon"]
print("\nArray Element Are Using Foreach Function:")

someArray.forEach{ names in
    
    print(names)

}

var someArray1 = [1, 2, 3, 4, 5]
var someArray2 = [6, 7, 8, 9, 10]

var resultantArray = someArray1 + someArray2
print("\nConcatenated Array:", resultantArray)


var someArr1:[Int] = [3, 56, 12, 4, 23, 5, 6, 7, 8]
var someArr2:[String] = ["Blue", "Black", "Green", "Yellow"]
var someArr3:[Int] = []

print("\nTotal number of elements present in someArr1 = \(someArr1.count)")
print("\nTotal number of elements present in someArr2 = \(someArr2.count)")
print("\nTotal number of elements present in someArr3 = \(someArr3.count)")


var someArrA:[Int] = [3, 56, 12, 4, 23, 5, 6, 7, 8]
var someArrB:[String] = ["Blue", "Black", "Green", "Yellow"]
var someArrC:[Int] = []

// Counting the total number of elements present
// in the given array
// Using count property
print("\nTotal number of elements present in someArr1 = \(someArrA.isEmpty)")
print("\nTotal number of elements present in someArr2 = \(someArrB.isEmpty)")
print("\nTotal number of elements present in someArr3 = \(someArrC.isEmpty)")


//Sets in Swift

//Empty Set
var mySet = Set<String>()

print("\nSet Values Are:")
mySet.insert("Anon")
mySet.insert("Asif")
mySet.insert("Adit")

print(mySet)

// Initialize a set with value
var mySetA: Set = [10, 23, 88]
var mySetB: Set = ["Swift", "Native", "iOS"]

print("\n1st Set Value is:", mySetA)
print("\n2nd Set Value is:", mySetB)


//Using for-in loop

var mySet1 : Set = [3, 55, 6, 22]

print("\nElements of Set:")
for x in mySet1 {
    
    print(x)
}


var mySet2 : Set = [3, 55, 6, 22]
print("\nElements of Sets Are:")

// Using for-in loop along with enumerated() function
for (index, element) in mySet2.enumerated(){
   print("\(element) is at Index: \(index)")
}


var mySet3 : Set = [3, 55, 6, 22]

print("\nElements of Set:")

// Iterating over the set using forEach() function
mySet3.forEach { num in
   print(num)
}

//Set Operations in Swift

var setA: Set = [1, 2, 3, 4, 6, 7]
var setB: Set = [5, 6, 7, 8, 9, 10]

//Union
var result = setA.union(setB)
print("\nUnion Resultant set:", result)

//Intersection
var result1 = setA.intersection(setB)
print("\nIntersection Resultant set:", result1)

//Subtraction
var result2 = setB.subtracting(setA)
print("\nSubtraction Resultant set:", result2)

//Difference
var result3 = setA.symmetricDifference(setB)
print("\nDifference Resultant set:", result3)

//Subset
var result4 = setA.isSubset(of: setB)
print("\nIs setA is the subset of setB?:", result4)


//Dictionary in Swift
//Syntax:
//var someDict =  [KeyType: ValueType](key:value)
//var someArray = [key1: value, key2: value, key3: value3]

var myDict = [3: "Black", 4: "Blue", 5: "Green", 6: "Blue", 7: "Pink"]

let color = myDict.filter { $0.value == "Blue" }
print("\nAfter Filer: \(color)")

//accessing dictionaries
var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someVar = someDict [3]

if let result = someVar {
    
    print("\nValue of key = 6 is \(result)")
    
} else {
    
    print("Value not found")
    
 }

//Using keys Property
var outPut = someDict.keys
print("\nUsing keys Property: \(outPut)")

//Using values Property
var someDict1:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var output1 = someDict1.values
print("\nUsing Values Property: \(output1)")

//Modifying Dictionaries in Swift
print("\nOriginal Dictionary:", someDict1)

someDict1.updateValue("Four", forKey: 2)
print("\nUpdated Dictionaries: \(someDict1)")

//Modifying elements in a Dictionary
print("\nOriginal Dictionary:", someDict1)

someDict1[1] = "New value of one"
print("\nModifyed Element in a Dictionary:", someDict1)

//Remove Key-Value Pairs from a dictionary
print("\nOriginal Dictionary:", someDict1)

someDict1.removeValue(forKey: 1)
print("\nAfter Removing Element from a Dictionary:", someDict1)

//Removing all the elements at once
someDict1.removeAll()
print("\nAfter Removing All the Element from a Dictionary: \(someDict1)\n")

//Iterating Over a Dictionary in Swift

var someDict2:[Int:String] = [1:"One", 2:"Two", 3:"Three"]

for (key, value) in someDict2 {
    
    print("Dictionary key \(key) -  Dictionary value \(value)")
}

//Using the Enumerated() Function
for (key, value) in someDict2.enumerated(){
    
    print("\nDictionary key \(key) -  Dictionary value \(value)")

}

//Converting Dictionary to Array in Swift

var someDict3:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
let dictKeys = [Int](someDict3.keys)
let dictValues = [String](someDict3.values)

print("\nDictonary Keys Are:")
for (key) in dictKeys {
    
    print("\(key)")
}

print("\nDictonary Values Are:")
for (value) in dictValues {
    
    print("\(value)")
}

//The "count" Property of Dictionary

var someDictA : [Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someDictB : [Int:String] = [4:"Four", 5:"Five"]

var size1 = someDictA.count
var size2 = someDictB.count

print("\nTotal items in someDictA = \(size1)")
print("Total items in someDictB = \(size2)")


//The "empty" Property of Dictionary

var someDictC:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
var someDictD:[Int:String] = [4:"Four", 5:"Five"]
var someDictE:[Int:String] = [Int:String]()

// Checking if the dictionary is empty or not
// Using isEmpty property
print("\nsomeDictC = \(someDictC.isEmpty)")
print("someDictD = \(someDictD.isEmpty)")
print("someDictE = \(someDictE.isEmpty)")
