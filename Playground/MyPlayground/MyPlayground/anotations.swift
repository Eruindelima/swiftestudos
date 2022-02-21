// this is a comment


//print("este numero é \(2+3) ")



/*comentarios
 longos
 são feitos aqui dentro */


/*//quem muda   //oque muda // e para o que muda
 diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
 
 //diceImageView1.alpha = 0.5 muda a opacidade
 //do dado para 6 um pouco tranparente
 
 diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
 */
////////////////////////////////////

//array

//var numbers = [45, 73 , 195, 53]


//var computedNumbers = [numbers[0]*numbers[1], numbers[1]*numbers[2], numbers[2]*numbers[3], numbers[3]*numbers[0]]



//print(computedNumbers)



// let randomNumber = Float.random(in: 1 ... 3)
//ou let randomNumber = Float.random(in: 1 ..< 3)
//print(randomNumber)



//let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
//let password = alphabet[Int.random(in: 0...25)] +
//                alphabet[Int.random(in: 0...25)] +
//                alphabet[Int.random(in: 0...25)] +
//                alphabet[Int.random(in: 0...25)] +
//                alphabet[Int.random(in: 0...25)] +
//                alphabet[Int.random(in: 0...25)]
//
//print(password)
//



/* classes e tamnho de classes para layout */


//func greeting(){
//
//    var hello = ""
//
//    for _ in 1 ... 5 {
//        hello = "hello"
//
//        print(hello)
//    }
//}
//
//greeting()


//var str = "Fakers gonna"
//
//for _ in 1 ... 5 {
//    str += " fake"
//}
//
//print(str)


//func add(_ n1: Int, _ n2:Int){
//    print(n1+n2)
//}
//
//func subtract(n1: Int, n2:Int){
//    print(n1 - n2)
//}
//
//func multiply(n1: Int, n2:Int){
//    print(n1 * n2)
//}
//
//func divide(n1: Int, n2:Int){
//    let x = Float(n1)
//    let z = Float(n2)
//
//    print(x / z)
//}
//
//func calculator() {
//  let a = 3 //First input
//  let b = 4//Second input
//
//  add(n1: a, n2: b)
//  subtract(n1: a, n2: b)
//  multiply(n1: a, n2: b)
//  divide(n1: a, n2: b)
//
//}
//
//calculator()

//@IBAction func hardnessSelected(_ sender: UIButton) {
//
//    let hardness = sender.currentTitle
//
//    if (sender.currentTitle == "Soft"){
//        print(softTime)
//    } else if(sender.currentTitle == "Medium"){
//        print(mediumTime)
//    } else {
//        print(hardTime)
//    }
//
//}

// == Is equal to
// != Is not equal to
// > Is greater than
// < Is lesser than
// >= Is greater or equal to
// <= Is lesser or equal to


// && AND
// || OR
// ! NOT


//var aNumber = Int(readLine()!)!
//
//
//func dayOfTheWeek(day: Int){
//    
//    switch day {
//    case 1:
//        print("Monday")
//    case 2:
//        print("tuesday")
//    case 3:
//        print("Wednesday")
//    case 4:
//        print("Thursday")
//    case 5:
//        print("friday")
//    case 6:
//        print("Saturday")
//    case 7:
//        print("Sunday")
//    default:
//        print("error")
//    }
//}
//
//
//dayOfTheWeek(day: aNumber)



//import UIKit
//
//class ViewController: UIViewController {
//
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
//
//
//    @IBAction func hardnessSelected(_ sender: UIButton) {
//
//        let hardness = sender.currentTitle
//
//        if (hardness == "Soft"){
//            print(softTime)
//        } else if(hardness == "Medium"){
//            print(mediumTime)
//        } else {
//            print(hardTime)
//        }
//
//    }
//
//}


//import UIKit
//
//class ViewController: UIViewController {
//    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
//    
//    
//    @IBAction func hardnessSelected(_ sender: UIButton) {
//        
//        let hardness = sender.currentTitle
//        
//        switch hardness {
//        case "Soft":
//            print(softTime)
//        case "Medium":
//            print(mediumTime)
//        case "Hard":
//            print(hardTime)
//        default:
//            print("Error")
//        }
//    
//    }
//    
//}


/*DICTIONARIO*/
//value simple
//vat dict = ["teste" : "teste teste teste",
//            "teste" : "teste teste teste "]
//
//declarate value of the dictionari
//
//var dict : [String : Int] = ["Angela" : 234555,
//                            "Carlos" : 7756443]
//
//
//print(dict["Soft"])
//


//  /* opcional deixando um valor opcional e desembrulhando no final */
//
//  var player1Name: String = nil assim nao posso atribuir valor com o ? ao lado da string eu poderei declarar ela opcional
//
//
//  var player1Name: String? = nil //agora eu posso dizer que esse falor é nil pois o mesmo tem  o ? que o torna opcional
//
//  player1Name = "Eruin"
//  print(player1Name!)
//
//  var unwrappedP1Username = player1Name!
//
//  player1username != nil {
//      print(player1Username!)
//  }
//
//
//var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]
//
//func highestScore(scores: [String: Int]) {
//
//    var amy = studentsAndScores["Amy"]!
//    var james = studentsAndScores["James"]!
//    var helen = studentsAndScores["Helen"]!
//
//    if amy > james && helen > helen {
//        print("O maior valor Amy ", amy)
//    } else if james > amy && james > helen {
//        print("O maior valor foi do James ", james)
//    } else {
//        print("O maior foi o da Helen ",  helen)
//    }
//
//}
//
//highestScore(scores: studentsAndScores)





//swift case com optional
//import UIKit
//
//class ViewController: UIViewController {
//
//    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
//
//    @IBAction func hardnessSelected(_ sender: UIButton) {
//
//        let hardness = sender.currentTitle
//
//        switch hardness {
//            case "Soft":
//                print(eggTimes[hardness!]!)
//            case "Medium":
//                print(eggTimes[hardness!]!)
//            case "Hard":
//                print(eggTimes[hardness!]!)
//            default:
//                print("Error")
//        }
//
//    }
//
//}


/************************** STRUCT ***************************************/



//struct Town {
//    let name = "Angelaland"
//    var citizens = ["Angela", "Jack Bauer"]
//    var resources = ["Grain": 100, "Ore": 42, "Woll": 75]
//    func fortify(){
//        print("Defences increased!")
//    }
//}
//
//var myTown = Town()
//
//print(myTown.citizens)
//print("\(myTown.name) has \(myTown.resources["Grain"]!) bas of de grain.")
//
//myTown.citizens.append("keanu Reeves") //usado para adicionar qualquer coisa dentro da stuct
//
//print(myTown.citizens.count)
//
//myTown.fortify()
//
//
//struct Town {
//    let name: String // string simples
//    var citizens: [String] // array de strings
//    var resources: [String: Int] //Dicionário
//
//    init(name: String, citizens: [String], resources: [String: Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//
//    func fortify(){
//        print("Defences increased!")
//    }
//
//
//
//
//
//mutating func harvesRice() { //se estiver criando método que modifica uma das
//    resources["Rice"] = 100 //propriedades dentro da estrutura temos que marcar
//}                           //esse método como MUTATING.
//}                           //Ao fazer isso o "SELF"se comporta como um "VAR"podendo ser alterado livremente
//
//
//var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts": 100])
//anotherTown.citizens.append("Wilson")
//print(anotherTown.citizens)
//
//
//var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Tumbleed": 1])
//
//anotherTown.citizens.append("wilson")
//ghostTown.fortify()
//
//  ****************************TIPOS DE FUNCÕES*****************************************
//
//func tipo1(){
//      print("Hello")   FUNCÃO QUE CONTÉM APENAS ALGUM CODIGO PARA SER EXECUTADO
//  }
//
//func tipo2(name: String){
//      print("Hello\(name)") FUNCÕES COM ENTRADA QUE PODEM INCOPORAR ALGUNS DADOS PORTANTO ELE INCORPORA O HELLO E IMPRIME JUNTO COM NAME
//}
//
//
//func tipo3(name: String) -> Bool {
//  if name == "angela" || name == Jack"
//      return true             Esse tipo de funcão eu posso declarar o retorno esperado através da seta eu mando a informacão e eespero um resultado
//} else {                      se eu de repente usar alguma condicao EX: var abrirPorta = tipo3(name: "angela") essa variavel espera um retorno do tipo bool
//      return false
//}
//
//
//*****************************exempro de como criar uma visualizacao de tela do zero ****************************************
//
//import Foundation // este import representa um frameWork que é da apple para facilitar a escrita de códigos, para que nada fosse construido do zero.
//UIKit esta em um nivel mais a cima do fundation com mais componeste que podemos usar.
//import UIKit //sempre usar esse import para usar a superclassev UIViewController
//
//
//class SecondViewController: UIViewController {
//
//    var bmiValue = "0.0"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .red
//
//        let label = UILabel()
//        label.text = bmiValue
//        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50) //propriedades que ficarao em tela quando houver transicão para outra tela feita
//        view.addSubview(label)
//    }
//}
//
//let secondVC = SecondViewController() //secondVC é um objeto criado na view controller
// ^ estou chamando a minha classe SecondViewController na classe principal da view controller.
//secondVC.bmiValue = String(format: "%.1f", bmi)//estou acessando a variavel bimValue que esta na minha classe SecondViewController
//                                              //e estou formatando o valor que seria um int em string para ser visualizado
//
//self.present(secondVC, animated: true, completion: nil)// quando a animacão e apresentacao forem concluidas nao farei mais nada
