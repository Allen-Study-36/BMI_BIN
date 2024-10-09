//
//  SecondViewController.swift
//  BMI_BIN
//
//  Created by gbstar on 10/1/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bmiNumResult: UILabel!
    @IBOutlet weak var bmiGradeResult: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    func initUI(){
        bmiNumResult.text = "\(bmi?.value ?? 0)"
        bmiGradeResult.text = bmi?.grade.rawValue
        switch(bmi?.grade){
            case .error, .none:
                bmiGradeResult.backgroundColor = UIColor.white
        case .underweight:
            bmiGradeResult.backgroundColor = UIColor(displayP3Red: 22/255,
                                    green: 231/255,
                                    blue: 207/255,
                                    alpha: 1)
        case .normal:
            bmiGradeResult.backgroundColor = UIColor(displayP3Red: 212/255,
                                                    green: 251/255,
                                                    blue: 121/255,
                                                    alpha: 1)
        case .overweight:
            bmiGradeResult.backgroundColor = UIColor(displayP3Red: 218/255,
                                                     green: 127/255,
                                                     blue: 163/255,
                                                     alpha: 1)
        case .moderateObesity:
            bmiGradeResult.backgroundColor = UIColor(displayP3Red: 255/255,
                                                     green: 150/255,
                                                     blue: 141/255,
                                                     alpha: 1)
        case .highDegreeObesity:
            bmiGradeResult.backgroundColor = UIColor(displayP3Red: 255/255,
                                                     green: 100/255,
                                                     blue: 78/255,
                                                     alpha: 1)
        }
        
        bmiNumResult.clipsToBounds = true
        bmiNumResult.layer.cornerRadius = 8
        backButton.layer.cornerRadius = 5
    }
    
    @IBAction func backButtonTap(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}
