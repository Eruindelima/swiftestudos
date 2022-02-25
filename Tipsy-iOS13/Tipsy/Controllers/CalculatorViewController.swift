

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var totalPct: Float?
    var percent: Float?
    var qtnPersonsResult: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        var bill: Float = Float(billTextField.text!)!
        var qntPerson: Float = Float(splitNumberLabel.text!)!
        
        
        if zeroPctButton.isSelected {
            self.totalPct = bill / qntPerson
            self.qtnPersonsResult = qntPerson
            print(totalPct)
        } else if tenPctButton.isSelected {
            self.totalPct = (bill + (bill) * (10/100)) / qntPerson
            self.qtnPersonsResult = qntPerson
            self.percent = 10
            print(totalPct)
        } else {
            self.totalPct = (bill + (bill) * (20/100)) / qntPerson
            self.qtnPersonsResult = qntPerson
            self.percent = 20
            print(totalPct)
        }
        
        self.performSegue(withIdentifier: "nextPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextPage" {
            var resultViewController = segue.destination as! ResultsViewController
            resultViewController.total = self.totalPct
            resultViewController.percent = self.percent
            resultViewController.qtnPersons = self.qtnPersonsResult
            
        }
    }
}

