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




let array = [6,2,3,9,4,1]


array.map{$0 + 1}

