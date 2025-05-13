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
    
    @IBOutlet weak var segRisco: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func mudarStepper(_ sender: UIStepper) {
        labelIdade.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarStepperPAS(_ sender: UISlider) {
        labelPAS.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarStepperPAD(_ sender: UISlider) {
        labelPAD.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarSwitch(_ sender: UISwitch) {
        print(NSNumber(value: sender.isOn))
    }
    
    @IBAction func receberLink(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber o exame",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet
        )
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertAction.Style.default,
            handler: {action in
                self.labelLink.text = action.title
            }))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertAction.Style.default,
            handler: {action in
                self.labelLink.text = action.title
            }))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil
        ))
        
        present(alerta, animated: true)
    }
    
    @IBAction func avancar(_ sender: Any) {
        var tipo: String
        var msg: String
        
        if (segRisco.selectedSegmentIndex >= 0) {
            tipo = segRisco.titleForSegment(at: segRisco.selectedSegmentIndex)!
            msg = "Triagem \(tipo). Paciente com idade de \(labelIdade.text!) salvo com sucesso!"
        } else {
            tipo = ""
            msg = "Antes de salvar, escolha a classificação de risco"
        }
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertController.Style.alert
        )
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertAction.Style.default
        ))
        
        present(alerta, animated: true)
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

