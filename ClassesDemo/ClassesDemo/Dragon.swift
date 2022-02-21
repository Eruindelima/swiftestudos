//classe dragom que esta herdando da classe inimigo 
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String){
        print("Says: \(speech)")
    }
    
    override func move() { //com a palavra override na frente o metodo de movimentacao, ele pode fazer algo completamente diferente.
        print("Fly foewards")
    }
    
    override func attack() {
        super.attack()//isso faz com que eu ative o método de ataque da minha super classe que vai a quantidade de x ataque que eu quero
        print("Spits Fire, does 10 damage")
    }
}



