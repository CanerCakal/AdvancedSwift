// Private: En kısıtlı erişim düzeyi.

class SomeClass {
    var  someProperty: String
    
    init(someProperty: String) {
        self.someProperty = "Caner"
    }
}

let someClass = SomeClass(someProperty: "Default Value") // Burda değişmez!
someClass.someProperty = "New Value"
print(someClass.someProperty)

class SomeSubClass: SomeClass {
    let counter: Int = 19
    init() {
        super.init(someProperty: "Default Value") // Yine değişmez. Caner olarak kalır.
    }
}
let newSomeSubClass = SomeSubClass()
print(newSomeSubClass.counter)
print(newSomeSubClass.someProperty)




// Fileprivate: Dosya dışında kullanım kapalıdır.

// Internal: Varsayılan erişim düzeyi. Alt sınıflar erişebilir. Dışarıdan erişilebilir.

// Public: Modüller arası iletişim.

// Open: Override etme gibi iç yapıda değişiklik yapacak seviyede erişim verir.

