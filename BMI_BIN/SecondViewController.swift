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
    
    var bmiNum: Double?
    var bmiGrade: String?
    var bmiGradeColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    func initUI(){
        bmiNumResult.text = "\(bmiNum ?? 0)"
        bmiGradeResult.text = bmiGrade
        bmiGradeResult.backgroundColor = bmiGradeColor
        bmiNumResult.clipsToBounds = true
        bmiNumResult.layer.cornerRadius = 8
        backButton.layer.cornerRadius = 5
    }
    
    @IBAction func backButtonTap(_ sender:UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}
