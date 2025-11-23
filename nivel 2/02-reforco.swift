/*Desafio: Crie uma classe base Employee com a propriedade wage: Double (usando private(set) e inicializada no init). Crie uma subclasse Manager que adicione um método público grantBonus(amount: Double) que modifique o wage (acessando-o internamente). Mostre que é impossível modificar o wage de fora da classe ou da subclasse base.*/

class Employee { 
  private(set) var wage: Double 

  init(wage: Double) { 
    self.wage = wage
  }
}

class Manager: Employee {
  func grantBonus(amount: Double) {
    self.wage+=amount
  }
}

let vitor = Employee(wage: 2300)

vitor.wage = 5000