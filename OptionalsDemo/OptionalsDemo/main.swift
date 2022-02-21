



//let myOptional: String? //esse valor é opcional pois tem o ponto de interrogacao no final
//myOptional = nil

// ***** desembrulhamnto forcado *******
//let text: String = myOptional! //desenbrulhamento focado




// *********** verificacao de valores nulos **********
//if myOptional != nil {
//    let text: String = myOptional!
//} else {
//    print("myOptional was found to be nil.")
//}


//******* ligacao opcional *********
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    let text2: String = safeOptional
//    print(safeOptional)
//} else {
//    print("myOptional was foundnto be nil.")
//}



//******* OPERADORNNULO COALESCENTE *********
//
//let text: String = myOptional ?? "I am the default value"
//print(text)




//****** ENCADEAMENTO OPCIONAL ********
//
//struct MyOptional  {
//    var property = 123
//    func method(){
//        print("I am the struct's method.")
//    }
//}
//
//let myOptional: MyOptional?
//
//myOptional = MyOptional()
//
//myOptional?.method()
