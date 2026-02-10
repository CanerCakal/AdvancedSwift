var someOptionalVariable: Int? = 34
var someVariable: Int = 52

func forceUnwrap() {
    let sum = someVariable + someOptionalVariable! //Tercih edilen bir kullanım değil. Kesin dolu olacağını belirtiyoruz.
    print(sum)
}
forceUnwrap()

func ifUnwrapExample() {
    if let unwrappedValue = someOptionalVariable {
        let sum1 = unwrappedValue + someVariable
        print(sum1)
    } else {
        print("Value is nil!")
    }
}
ifUnwrapExample()

func guardUnwrapExample() {
    guard let unwrappedValue = someOptionalVariable else { return }
    let sum2 = unwrappedValue + someVariable
    print(sum2)
}
guardUnwrapExample()

func defaultValueExample() {
    let sum3 = (someOptionalVariable ?? 999) + someVariable //Değer boşsa defaul bir değer atamamızı sağlar.
    print(sum3)
}
defaultValueExample()
