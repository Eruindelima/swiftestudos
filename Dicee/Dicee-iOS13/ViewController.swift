//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    //aqui acontece a ligacão entre o dado e a programacão que foi adicionada logo mais a baixo
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    

    //ACÕES QUE O BOTÃO PODE FAZER
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        //esta linha seleciona em uma costante os elementos do meu array
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //aqui eu pego as posicões dos dados e gero eles de forma aleatória com o random element
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        //                                                                               MINIMO...MÁXIMO
        //ou pode ser feito desta forma diceImageView1.image = diceArray.[Int.random(in: 0...5)]
    }
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }
}

