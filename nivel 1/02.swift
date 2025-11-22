/*Conta Bancária (Class com Encapsulamento): Crie uma class chamada BankAccount. Use private(set) para a propriedade balance: Double (saldo). Crie um método deposit(amount: Double) e um método withdraw(amount: Double) que valide se há saldo suficiente.*/

class BankAccount {
  private(set) var balance: Double = 0


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


let acc0232 = BankAccount()
acc0232.deposit(amount: 500.00)

acc0232.withdraw(amount: 250.0)
acc0232.withdraw(amount: 50.00)