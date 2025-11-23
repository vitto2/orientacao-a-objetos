/*Inicializadores e Herança (super.init): Crie uma classe base Vehicle com propriedades manufacturer: String e year: Int (ambas inicializadas no init). Crie uma subclasse Car que adicione a propriedade numberOfDoors: Int. O inicializador de Car deve receber os três valores e chamar corretamente o super.init da classe Vehicle.*/

class Vehicle {
  private(set) let manufacturer: String 
  private(set) let year: Int 

  init(manufacturer: String, year: Int) {
    self.manufacturer = manufacturer
    self.year = year
  }
}

class Car: Vehicle {
  private(set) let numberOfDoors: Int

  init(numberOfDoors: Int, manufacturer: String, year: Int) {
    self.numberOfDoors = numberOfDoors
    super.init(manufacturer: manufacturer, year: year)
  }

}

