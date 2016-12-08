//
//  UnweightedView.swift
//  GPA Calculator
//
//  Created by Student on 12/7/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class UnweightedView: UIViewController
{
    @IBOutlet weak var period1: UITextField!
    @IBOutlet weak var period2: UITextField!
    @IBOutlet weak var period3: UITextField!
    @IBOutlet weak var period4: UITextField!
    @IBOutlet weak var period5: UITextField!
    @IBOutlet weak var period6: UITextField!
    @IBOutlet weak var period7: UITextField!
    @IBOutlet weak var period8: UITextField!
    @IBOutlet weak var calculateGPA: UIButton!
    @IBOutlet weak var save: UIButton!
    
    var myClassPeriodUnweighted = ClassPeriod()
    var holder = 0.0

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func save(sender : UIButton)
    {
        let GradePerPeriodArray = [period1.text, period2.text, period3.text, period4.text, period5.text, period6.text, period7.text, period8.text]
        
        for item in GradePerPeriodArray
        {
            var count = 0.0
            
            if(item == "A+" || item == "A" || item == "A-" || item == "a+" || item == "a" || item == "a-")
            {
                count += 4.0
            }
            else if(item == "B+" || item == "B" || item == "B-" || item == "b+" || item == "b" || item == "b-")
            {
                count += 3.0
            }
            else if(item == "C+" || item == "C" || item == "C-" || item == "c+" || item == "c" || item == "c-")
            {
                count += 2.0
            }
            else if(item == "D+" || item == "D" || item == "D-" || item == "d+" || item == "d" || item == "d-")
            {
                count += 1.0
            }
            
            holder += count
            
        }

        
            let GPA = (holder / Double(myClassPeriodUnweighted.periods))
            myClassPeriodUnweighted.GPA = GPA
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if(segue.identifier == "unweightedFinal")
        {
            
            let FinalView : FinalViewControllerUnweighted = segue.destination as! FinalViewControllerUnweighted
            
            FinalView.myClassPeriodUnweighted2 = myClassPeriodUnweighted
            
            
        }
        
    }
    

}
