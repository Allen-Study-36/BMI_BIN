import Foundation

enum BMIGrade: String{
    case error = "문제발생"
    case underweight = "저체중"
    case normal = "정상"
    case overweight = "과체중"
    case moderateObesity = "중도비만"
    case highDegreeObesity = "고도비만"
}

class BMI {
    let value : Double
    let grade : BMIGrade
    
    init(value: Double, grade: BMIGrade) {
        self.value = value
        self.grade = grade
    }
    
    static func calculateBMI(height: String, weight: String) -> BMI {
        guard let h = Double(height), let w = Double(weight) else {
            return BMI(value: 0.0, grade: BMIGrade.error)
        }
        
        var bmiNum = w / (h * h) * 10000
        bmiNum = round(bmiNum * 10) / 10
        
        switch bmiNum {
        case ..<18.6:
            return BMI(value: bmiNum, grade: BMIGrade.underweight)
            
        case 18.6..<23.0:
            return BMI(value: bmiNum, grade: BMIGrade.normal)
            
            
        case 23.0..<25.0:
            return BMI(value: bmiNum, grade: BMIGrade.overweight)
        case 25.0..<30.0:
            return BMI(value: bmiNum, grade: BMIGrade.moderateObesity)
        case 30.0...:
            return BMI(value: bmiNum, grade: BMIGrade.highDegreeObesity)
        default:
            return BMI(value: 0.0, grade: BMIGrade.error)
        }
    }
}
