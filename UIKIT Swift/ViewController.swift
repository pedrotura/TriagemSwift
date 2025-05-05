//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 05/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var labelIdade: UILabel!
    @IBOutlet weak var labelPAS: UILabel!
    @IBOutlet weak var labelPAD: UILabel!
    @IBOutlet weak var labelLink: UILabel!
    
    @IBOutlet weak var stpIdade: UIStepper!
    
    @IBOutlet weak var segRisco: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mudarValorStepper(_ sender: Any) {
        labelIdade.text = "\(Int(stpIdade.value))"
    }
    
    @IBAction func mudarIndice(_ sender: Any) {
        switch segRisco.selectedSegmentIndex {
        case 0:
            print("Primeiro botão")
        case 1:
            print("Segundo botão")
        case 2:
            print("Terceiro botão")
        case 3:
            print("Quarto botão")
        default:
            break;
        }
    }

}

