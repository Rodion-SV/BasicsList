func getAddress(for object: UnsafeRawPointer) -> String {
    return String(format: "%p", Int(bitPattern: object))
}
let array1: [Int] = [0,1,2,3]
let array2 = array1
print(getAddress(for: array1) == getAddress(for: array2))
let string1: String = "12345"
let string2 = string1

print(getAddress(for: string1) == getAddress(for: string2))
