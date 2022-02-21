






import UIKit

class CalculateViewController: UIViewController {

   
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heigthSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
       let height = String(format: "%.2f", sender.value)
        //para imprimir a altura na tela
        heightLabel.text = "\(height)m"
        //para colocar a letra m" interpolada com o numero
    }
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        //para imprimir o peso, porém existe uma incompatibilidade então para seguir mostrando temos que converter o valor
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heigthSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        //let bmi = weight / pow(height, 2)//pow(calcula ao quadrado)
        //bmiValue = String(format: "%.1f", bmi)// varivavel criada la em cima é o bmiValue que vai receber o valor calculado
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        //com o seu conseguimos usar todo que o método view controller possui, herdando o UIViewController para que possa acessar o calculateViewController através do self
        //performSegue onde pegamos o withIdentifier(idenficador) que esta no storyboard após linkar o calculate e o results
        //o self representa o nosso calculateViewController
        //ISSO INICIA A "RESULTVIEWCONTROLLER" MANUALMENTE
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" { //estou verificando se a tela que estou querendo seguir tem o idenficador
            let destinationVC = segue.destination as! ResultsViewController //O "!" significa que ser um downcast forcado de pai pra filho 
            destinationVC.bmiValue = calculatorBrain.getBMIValue()          //destinationVC.bmiValue = calculatorBrain.getBMIValue()
                                                                            //aqui ele esta pegando o resultado(bmi) e passando para a outra pagina
                                                                            //onde na Results existe a variavel que irá receber está variavel
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

