/*Comparação de Objetos (Structs): Crie uma struct Point com x e y (Double). Crie uma função que receba duas instâncias de Point e retorne true se elas forem idênticas. Qual a diferença em como você faria essa comparação se Point fosse uma Class? (Pense em igualdade de valor vs. identidade).*/

struct Point: Equatable {
  let x: Double
  let y: Double
}

let xPoint = Point(x: 5.0, y: 15.0)
let yPoint = Point(x: 10.0, y: 9.0)

let result = x == y


print(result)