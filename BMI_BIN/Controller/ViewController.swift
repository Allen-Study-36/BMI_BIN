import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    func initUI(){
        mainLabel.text = "키와 몸무게를 입력하세요"
        calculateButton.layer.cornerRadius = 5
        heightTextField.placeholder = "(CM)"
        weightTextField.placeholder = "(KG)"
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(#function)
        if heightTextField.text == "" || weightTextField.text == "" {
            mainLabel.text = "키와 몸무게를 입력하셔야만 합니다!!!"
            mainLabel.textColor = UIColor.red
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function)
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.modalPresentationStyle = .fullScreen
            
            secondVC.bmi = BMI.calculateBMI(height: heightTextField.text!, weight: weightTextField.text!)
        }
    }
    
    @IBAction func onTap(_ sender: UIButton){
    }
}

