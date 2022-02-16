


struct Town {
    let name: String // string simples
    var citizens: [String] // array de strings
    var resources: [String: Int] //Dicionário

    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }

    mutating func harvesRice() { //se estiver criando método que modifica uma das
        resources["Rice"] = 100 //propriedades dentro da estrutura temos que marcar
    }                           //esse método como MUTATING.
}

var myTown = Town(name: "São Paulo", citizens: ["Rodolfo", "Roberta"], resources: ["Wool": 75])


myTown.harvesRice()
print(myTown.resources)

