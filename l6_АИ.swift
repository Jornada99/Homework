import Foundation


// 1. Implement collection type "queue" using generics.

struct Queue<T> {
    private var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.removeFirst()
    }
}

// 2. Add some higher order methods useful to this collection.

let largestNumber: (Int, Int) -> Bool { (elementOne: Int, elementTwo) -> Bool in
    return elementOne > elementTwo
}

let minimumNumber: (Int, Int) -> Bool { (elementOne: Int, elementTwo) -> Bool in
    return elementOne < elementTwo
}

func compare(array: [Int], predicate: (Int, Int) -> Bool) -> Int {
    
    var i = 0
    
    for element in array {
        if predicate(element[i], element[i + 1]) {
            let number = element[i]
        } else {
            let number = element[i + 1]
        }
        
        i += 1
    }
    
    return number
}

compare(array: [Int]) { $0 > $1 }

compare(array: [Int]) { $0 < $1 }

// 3. Add subscript, which will return nil if a non-existent index is accessed.

struct QueueSub<T> {
    private var elements: [T] = []
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T? {
        return elements.removeFirst()
    }
    
    subscript(indices: UInt ...) -> Int? {
        
        for index in indices {
            if index < self.elements.count {
                return index
            } else {
                return nil
            }
        }
    }
}