//var a = 0
//var b = 0
//let closure = {[a] in
//    print(a,b)
//}
//a = 10
//b = 10
//closure()


class X {
    var value = 0
}
let a = X()
let b = X()

let closure = { [a] in
    print(a.value, b.value)
}
a.value = 10
b.value = 10
closure()
