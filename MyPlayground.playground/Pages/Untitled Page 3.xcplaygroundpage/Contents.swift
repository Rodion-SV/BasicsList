class X {
    lazy var a: Int? = {
        print("A")
        return nil
    }()
    func b() -> Int? {
        print("B")
        return a ?? 3
    }
    let c: () -> Int? = {
        print("C")
        return 5
    }
}
let x = X()
x.b() ?? x.c()
