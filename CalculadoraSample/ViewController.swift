//
//  ViewController.swift
//  CalculadoraSample
//
//  Created by student on 09/05/19.
//  Copyright © 2019 Hta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numeroTela:Double = 0
    var numeroAnterior:Double = 0
    var realizaConta = false
    var operadores = 0
    
    @IBOutlet weak var telaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        telaLabel.text = String(0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func numerosButton(_ sender: UIButton) {
        if realizaConta{
         telaLabel.text = String(sender.tag-1)
         numeroAnterior = Double(telaLabel.text!)!
         realizaConta = false
        
        }else{
        telaLabel.text = telaLabel.text! + String(sender.tag-1)
        numeroTela = Double(telaLabel.text!)!
        }
      
    }
    
    @IBAction func operacoesButton(_ sender: UIButton) {
        if telaLabel.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            numeroAnterior = Double(telaLabel.text!)!
            if sender.tag == 12 {
            telaLabel.text = "/"
            } else if sender.tag == 13 {
                telaLabel.text = "X"
            }else  if sender.tag == 14 {
                telaLabel.text = "-"
            }else  if sender.tag == 15 {
                telaLabel.text = "+"
            }
            operadores = sender.tag
            realizaConta = true
    
        }else if sender.tag == 16{
            if operadores == 12{
                telaLabel.text = String(numeroTela / numeroAnterior)
            }
            else if operadores == 13{
            telaLabel.text = String(numeroTela * numeroAnterior)
            }
            else if operadores == 14{
                
            telaLabel.text = String(numeroTela - numeroAnterior)
            }
            else if operadores == 15{
            telaLabel.text = String(numeroTela + numeroAnterior)
            }
        
        } else if sender.tag == 11{
            telaLabel.text = ""
            numeroAnterior = 0
            numeroTela = 0
            operadores = 0
        }
        
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

