/*Modelo de Livro Simples (Struct): Crie uma struct chamada Book com as propriedades: title (String, let), author (String, let) e isAvailable (Bool, var). Adicione um método toggleAvailability() que mude o estado de isAvailable.*/

struct Book {
  let title: String
  let author: String
  var isAvailable: Bool

mutating func toggleAvailability() {
    self.isAvailable.toggle()
}