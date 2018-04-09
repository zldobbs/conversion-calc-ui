//
//  ConverterViewController.swift
//  conversion-calculator
//
//  Created by Zachary Dobbs on 4/8/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    struct Conversion {
        let label: String?
        let inputUnit: String?
        let outputUnit: String?
    }
    
    let conversions = [
        Conversion(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
        Conversion(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
        Conversion(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
        Conversion(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi"),
    ]
    
    @IBAction func chooseConversion(_ sender: Any) {
        // create the alert controller
        let converterAlertController = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
        // now the actions
        let fToC = UIAlertAction(title: conversions[0].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[0].outputUnit
            self.inputDisplay.text = self.conversions[0].inputUnit
        }
        let cToF = UIAlertAction(title: conversions[1].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[1].outputUnit
            self.inputDisplay.text = self.conversions[1].inputUnit
        }
        let miToKm = UIAlertAction(title: conversions[2].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[2].outputUnit
            self.inputDisplay.text = self.conversions[2].inputUnit
        }
        let kmToMi = UIAlertAction(title: conversions[3].label, style: .default) { action -> Void in
            self.outputDisplay.text = self.conversions[3].outputUnit
            self.inputDisplay.text = self.conversions[3].inputUnit
        }
        // now add the actions
        converterAlertController.addAction(fToC);
        converterAlertController.addAction(cToF);
        converterAlertController.addAction(miToKm);
        converterAlertController.addAction(kmToMi);
        // now show it
        self.present(converterAlertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        outputDisplay.text = conversions[0].outputUnit
        inputDisplay.text = conversions[0].inputUnit
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
