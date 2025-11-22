/*Protocolo de Logável: Defina um protocol chamado Loggable que exige uma propriedade logDescription: String { get }. Faça a BankAccount do desafio 2 adotar este protocolo, retornando uma string formatada com o nome da conta e o saldo atual. (Você pode adicionar um accountName à classe BankAccount para o log).*/

protocol Loggable { 
  var logDescription: String { get }
}

class BankAccount: Loggable {
  private(set) var balance: Double = 0
  private(set) var accountName: String
  var logDescription: String {
    return "Account Name: \(self.accountName) | Account balance: \(self.balance)"
  } 

  init(accountName: String) {
    self.accountName = accountName
  }
  func deposit(amount: Double) {
    self.balance += amount
    print("Deposito feito com sucesso. Seu saldo atual é \(self.balance)")
  }

  func withdraw(amount: Double) {
    if self.balance >= amount {
      balance -= amount
      print("Saque feito com sucesso. Seu saldo atual é de: \(self.balance)")
    } else {
      print("Saldo insuficiente. Tente novamente outro valor.")
    }
  }

}


let acc0232 = BankAccount(accountName: "Vitor Silva de Souza")
acc0232.deposit(amount: 500.00)

acc0232.withdraw(amount: 250.0)
acc0232.withdraw(amount: 50.00)

print(acc0232.logDescription)