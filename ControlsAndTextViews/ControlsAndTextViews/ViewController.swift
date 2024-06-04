//
//  ViewController.swift
//  ControlsAndTextViews
//
//  Created by Jorge on 14/05/24.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myProgressView: UIProgressView!
    @IBOutlet weak var myTextField: UITextField!
    
    //Variables
    private let myPickerValues = ["Uno", "Dos", "Tres", "Cuatro", "Cinco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Buttons
        myButton.setTitle("My botón", for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        
        //Pickers
        myPickerView.backgroundColor = UIColor.lightGray
        myPickerView.dataSource = self
        myPickerView.delegate = self
        myPickerView.isHidden = true
        
        //PageControl
        myPageControl.numberOfPages = myPickerValues.count
        myPageControl.currentPageIndicatorTintColor = UIColor.blue
        
        //Stepper
        myStepper.minimumValue = 1
        myStepper.maximumValue = Double(myPickerValues.count)
        
        //Switch
        mySwitch.onTintColor = .purple //El color del switch al estar activado será purpura
        mySwitch.isOn = false //Que inicie el switch desactivado
        
        //Progress indicator
        myProgressView.progress = 0
        
        //TextFields
        myTextField.textColor = .brown
        myTextField.placeholder = "Escribe tu texto aqui"
        myTextField.delegate = self
    }
    
    //Actions
    @IBAction func myPageControlAction(_ sender: Any) {
        myPickerView.selectRow(myPageControl.currentPage, inComponent: 2, animated: true)
    }
    
    @IBAction func myButtonAction(_ sender: Any) {
        
        if myButton.backgroundColor == UIColor.blue {
            myButton.backgroundColor = UIColor.green
        } else {
            myButton.backgroundColor = UIColor.blue
        }
    }
    
    @IBAction func myStepperAction(_ sender: Any) {
        
        let value = myStepper.value
        print("Valor del stepper: \(value)")
        
    }
    @IBAction func mySwitchAction(_ sender: Any) {
        
        if mySwitch.isOn {
            myPickerView.isHidden = false
        } else {
            myPickerView.isHidden = true
        }
    }
}

//Extendemos el ViewController con las funciones necesariasd
//para implementar el pickerview
extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    
    //Nro de columnas que tendrá nuestro pickerview
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Nro de elementos cargados en el listado
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return myPickerValues.count
    }
    
    //Definimos como se va a mostrar cada item en el picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myPickerValues[row]
    }
    
    //Esta operacion se invoca cada vez que se seleccionó un row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myButton.setTitle(myPickerValues[row], for: .normal)
    }
}

// UITextFieldDelegate
extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        /*
        El teclado se debe ocultar cuando se le dá a la tecla ENTER
        */
        textField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        myButton.setTitle(myTextField.text, for: .normal)
    }
    
}












