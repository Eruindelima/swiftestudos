//
//
//
//
//
//
//func exercise() {
//
//    struct User {
//        let name: String
//        var email: String?
//        var followers: Int
//        var isActive: Bool
//
//        init(name: String, email: String?, followers: Int, isActive: Bool){
//            self.name = name
//            self.email = email
//            self.followers = followers
//            self.isActive = isActive
//        }
//
//        func logStatus() {
//            if isActive == true {
//                print(name + "is working hard.")
//            } else{
//                print(name + "has left earth")
//            }
//
//        }
//    }
//
//    // Diagnostic code - do not change this code
//    print("\nDiagnostic code (i.e., Challenge Hint):")
//    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
//    musk.logStatus()
//    print("Contacting \(musk.name) on \(musk.email!) ...")
//    print("\(musk.name) has \(musk.followers) followers")
//    // sometime later
//    musk.isActive = false
//    musk.logStatus()
//}
//
//exercise()
//
//
//
//
//
//
//struct Town {
//let name: String // string simples
//var citizens: [String] // array de strings
//var resources: [String: Int] //Dicionário
//
//init(name: String, citizens: [String], resources: [String: Int]) {
//    self.name = name
//    self.citizens = citizens
//    self.resources = resources
//}
//
//mutating func harvesRice() { //se estiver criando método que modifica uma das
//    resources["Rice"] = 100 //propriedades dentro da estrutura temos que marcar
//}                           //esse método como MUTATING.
//}
//
//var myTown = Town(name: "São Paulo", citizens: ["Rodolfo", "Roberta"], resources: ["Wool": 75])
//
//
//myTown.harvesRice()
//print(myTown.resources)
