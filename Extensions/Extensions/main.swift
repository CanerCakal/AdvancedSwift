extension String {
    func printInJapaneseStyle() {
        self.forEach { item in
            print(item)
        }
    }
    
    func printInArabicStyle() {
        print(String(self.reversed()))
    }
}

let swiftDescription = "Swift is awosome!"

swiftDescription.printInArabicStyle()
swiftDescription.printInJapaneseStyle()


protocol SomeProtocol {
    var someProtocolProperty: String { get }
    
    func someProtocolMethods()
}

class SomeClass {
    var someProperty: Int
    
    init(someProperty: Int) {
        self.someProperty = someProperty
    }
    
    func someMethod() {
        print("Some Method!")
    }
}

extension SomeClass: SomeProtocol {
    var someProtocolProperty: String {
        return "Some Protocol Property"
    }
    
    func someProtocolMethods() {
        "Some Protocol Methods!"
    }
    
    
}
