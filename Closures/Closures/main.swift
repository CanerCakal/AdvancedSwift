// Closures

let myFirstClosure: (Int, Int) -> Int = { numFirst, numSecond in
    return numFirst + numSecond
}
let result = myFirstClosure(4,5)
print(result)

let oddNumbers = [1,3,5,7,9,11]
let evenNumbers = oddNumbers.map {$0 - 1} // map dizideki elemanların hepsine gidip geri döndürürü. Hazır bir closure.
print(evenNumbers)

let names = ["Caner", "Caner", "Mustafa", "Yusuf", "Beyto", "Caner"]

/* var caners = [String]()
for name in names {
    if name == "Caner" {
        caners.append(name)
    }
} */

var caners = names.filter { $0 == "Caner" // Yine filter hazır bir closure ve hepsini dolaşıp geri dönüyor.
}
print(caners.count)

let didCounterValueChanged:(Int) -> Void = { newCounterValue in
        print(newCounterValue)
}

var counter: Int = 0 {
    didSet {
        didCounterValueChanged(counter)
    }
}

counter += 2
counter += 2
counter += 2
