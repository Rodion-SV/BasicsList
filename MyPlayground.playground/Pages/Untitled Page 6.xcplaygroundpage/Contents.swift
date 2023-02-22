let n: [Any] = [1,"2"]
let m = n.reduce("") {"\($0)\($1)"}
print(m)

