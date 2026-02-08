struct StructName {
    let someProperty: Int
    
    init(someProperty: Int = 0) { // Default bir değerle başlattık. Ayrıca oto init eder ama bazı durumlarda bizde yapabiliriz.
        self.someProperty = someProperty
    }
}

extension StructName {
    func getSomeProperty() -> Int { // Fonksiyonlarda gelebilir
        return someProperty
    }
}

class ClassName {
    var someProperty: String
    
    init(someProperty: String = "ClassName") {
        self.someProperty = someProperty
    }
}

extension ClassName {
    func yourName() {
        print("My name is \(someProperty)")
    }
} // Metodları içeride kullanabildiğimiz gibi extension ile ekleyebiliriz.

let className = ClassName(someProperty: "Caner")
print(className.yourName())

let someStruct = StructName(someProperty: 8) // Default değeri değiştirmiş olduk.
print(someStruct.getSomeProperty())


struct Diploma {
    var title: String = "Licance"
    var grade: String = "BSc"
}

class Student {
    var no: Int = 001
    var name: String = "Caner ÇAKAL"
}

let licanceDiploma = Diploma()
let canerÇakal = Student()

print("Okulumuz öğrencisi \(canerÇakal.name), \(licanceDiploma.grade) belgesini almaya hak kazanmıştır!")
