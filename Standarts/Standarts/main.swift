// MARK: - Camel Case
let someProperty: Double = 0.0 //Doğru
let some_flout_property: Float = 0.0 //Yanlış
// Yanlış Kullanım: let some-bool-property: Bool = true

func someMethod() { } //Doğru
func some_Method() { } //Yanlış

// MARK: - Pascal Case
class SomeClass { }
struct SomeStruct { }
enum SomeEnum { }
protocol SomeProtocol { }

//MARK: Girintili Yazım
class SomeClass1 {
    func someMethod() {
        let someConstant: String = ""
    }
}

//MARK: Özellikleri Private Tanımlamak
class SomeClass2 {
    private let someProperty: Bool = false
}

//MARK: Classları Final Tanımlamak
final class SomeClass3 {
    //Bu sınıftan başka bir sınıf türeyemez.
}

//MARK: Özellik ve Metodların Varlık İçindeki Kullanımları
class SomeClass4 {
    //Özellikler sınıfların üst kısımlarında tanımlanır.
    
    //init tanımı ortada yapılır.
    
    //Metodlar sınıfın en sonunda tanımlanır.
}

//MARK: Noktalı virgülle yazım vardır ama önerilmez.
private let pi: Float = 3.14;

//MARK: Metod Parametrelerinin Alt Alta Dizimi
func someMethod1(someIntegerParameter: Int,
                 someFloatParameter: Float,
                 someDoubleParameter: Double) {
    //Metod içeriği buraya gelir.
}

//MARK: Süslü Parantezlerin Kod Bloğu İçinde Kullanımı
//Doğru
func someMethod2() {
    //Bu şekilde kullanılmalıdır.
}
//Yanlış
func someMethod3()
{
    //Bu kullanım önerilmez.
}

//MARK: Tek Satırda return Gereksizdir.

func someMethod4() -> String {
    "Caner"
}

var someProperty2: Bool {
    true
}

//MARK: Koşulları Virgül ile Ayırma
// And karşılaştırması yapar.
var someVariable = 50
if someVariable > 40, someVariable < 60 {
    print("Değer 40 ile 50 arasındadır!")
}

//MARK: Virgülden Sonra Boşluk Bırakılır
let someArray = [1, 3, 5, 7, 9, 11, 13, 15]

func someMethod7(firstParameter: Int, secondParameters: Int) {
    
}

//MARK: İki Nokta Sonrasında Bir Boşluk Bırakılır.
var someProperty3: Double?

//MARK: Tip Belirtimi Yapmak
var someProperty4: Double = 3.52
var someProperty5 = 50
