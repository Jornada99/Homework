import Foundation

//1. Написать функцию, которая определяет, четное число или нет.

func numbers(number a: Int) {
    if a % 2 == 0 {
        print("\(a) is an even number")
    } else {
        print("\(a) is an odd number")
    }
}
numbers(number: 41)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func number(number a: Int) {
    if a % 3 == 0 {
        print("\(a) is divisible by 3")
    } else {
        print("\(a) is not divisible by 3")
    }
}
number(number: 33)

//3. Создать возрастающий массив из 100 чисел.

var increasingArray: [Int] = []

for i in 1...100 {
    increasingArray.append(i)
}
print(increasingArray)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var increasingArrayOne: [Int] = []

for i in 1...100 {
    increasingArray.append(i)
}

for number in increasingArray {
    if (number % 2) == 0 || (number % 3) != 0 {
        let index = increasingArray.firstIndex(of: number)!
        increasingArray.remove(at: index)
    } 
}

print(increasingArray)

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonacci(_ n: Int) -> [Int] {
    
    var array: [Int] = [1, 1]
    
    for i in 2...n {
        let number = array[i-1] + array[i-2]
        array.append(number)
    }
    
    return array
}

print(fibonacci(10))

//6. Заполнить массив из 100 элементов различными простыми числами.

func prime(_ n: Int) -> [Int] {
    
    var primes: [Int] = []
    var numbers = Array(2...n)
    
    while let p = numbers.first {
        primes.append(p)
        numbers = numbers.filter { $0 % p != 0 }
    }
    
    return primes
}

print(prime(100))
