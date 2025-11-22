/*Extensão de Struct (Funcionalidade): Adicione uma extension à struct Book (do desafio 1) que adicione uma propriedade computada displayStatus: String. Ela deve retornar "Disponível para Empréstimo" se isAvailable for true, e "Emprestado" caso contrário.*/

struct Book {
  let title: String
  let author: String
  var isAvailable: Bool

  mutating func toggleAvailability() {
    self.isAvailable.toggle()
    print("Status do livro alterado")
}
}

extension Book {
  var displayStatus: String { 
    return isAvailable ? "Disponível para Empréstimo" : "Emprestado"
  }
}

var coach = Book(title: "Formula da produtividade", author: "Fulaninho de tal coach", isAvailable: true)

coach.toggleAvailability()
print(coach.displayStatus)