protocol SomeProtocol {
    var someGetProperty: Int { get }
    var someGetAndSetProperty: String { get set }
    func someMethod(someParameters: Double) -> Float
}
//Protokol tanımıdır.
class SomeSuperClass {
    var someProperty: Bool = false
}

class SomeClass: SomeSuperClass, SomeProtocol {
    var someGetProperty: Int = 0
    
    var someGetAndSetProperty: String = ""
    
    func someMethod(someParameters: Double) -> Float {
        return 0
    }
}
//Class tanımında init etmemiz gerekir. O yüzden başlangıç değerleri var.
struct SomeStruct: SomeProtocol {
    var someGetProperty: Int
    
    var someGetAndSetProperty: String
    
    func someMethod(someParameters: Double) -> Float {
        return 0
    }
}

enum HavaDurumu: Int, CaseIterable {
    case güneşli = 5
    case açık
    case bulutlu
    case karlı
}
for havaDurumu in HavaDurumu.allCases {
    print(havaDurumu.rawValue)
}
