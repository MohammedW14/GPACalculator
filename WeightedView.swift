//
//  WeightedView.swift
//  GPA Calculator
//
//  Created by Student on 12/6/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class WeightedView: UIViewController
{
    @IBOutlet weak var period1: UITextField!
    @IBOutlet weak var period2: UITextField!
    @IBOutlet weak var period3: UITextField!
    @IBOutlet weak var period4: UITextField!
    @IBOutlet weak var period5: UITextField!
    @IBOutlet weak var period6: UITextField!
    @IBOutlet weak var period7: UITextField!
    @IBOutlet weak var period8: UITextField!
    @IBOutlet weak var calulateGPA: UIButton!
    @IBOutlet weak var reg1: UIButton!
    @IBOutlet weak var hon1: UIButton!
    @IBOutlet weak var ap1: UIButton!
    @IBOutlet weak var reg2: UIButton!
    @IBOutlet weak var hon2: UIButton!
    @IBOutlet weak var ap2: UIButton!
    @IBOutlet weak var reg3: UIButton!
    @IBOutlet weak var hon3: UIButton!
    @IBOutlet weak var ap3: UIButton!
    @IBOutlet weak var reg4: UIButton!
    @IBOutlet weak var hon4: UIButton!
    @IBOutlet weak var ap4: UIButton!
    @IBOutlet weak var reg5: UIButton!
    @IBOutlet weak var hon5: UIButton!
    @IBOutlet weak var ap5: UIButton!
    @IBOutlet weak var reg6: UIButton!
    @IBOutlet weak var hon6: UIButton!
    @IBOutlet weak var ap6: UIButton!
    @IBOutlet weak var reg7: UIButton!
    @IBOutlet weak var hon7: UIButton!
    @IBOutlet weak var ap7: UIButton!
    @IBOutlet weak var reg8: UIButton!
    @IBOutlet weak var hon8: UIButton!
    @IBOutlet weak var ap8: UIButton!
    @IBOutlet weak var save: UIButton!
    
    var myClassPeriodWeighted = ClassPeriod()
    var holder = 0.0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    @IBAction func reg1(sender:UIButton)
    {
        reg1.backgroundColor = UIColor.green
        hon1.backgroundColor = UIColor.red
        ap1.backgroundColor = UIColor.red
    }
    @IBAction func hon1(sender:UIButton)
    {
        reg1.backgroundColor = UIColor.red
        hon1.backgroundColor = UIColor.green
        ap1.backgroundColor = UIColor.red
    }
    @IBAction func ap1(sender:UIButton)
    {
        reg1.backgroundColor = UIColor.red
        hon1.backgroundColor = UIColor.red
        ap1.backgroundColor = UIColor.green
    }
    @IBAction func reg2(sender:UIButton)
    {
        reg2.backgroundColor = UIColor.green
        hon2.backgroundColor = UIColor.red
        ap2.backgroundColor = UIColor.red
    }
    @IBAction func hon2(sender:UIButton)
    {
        reg2.backgroundColor = UIColor.red
        hon2.backgroundColor = UIColor.green
        ap2.backgroundColor = UIColor.red
    }
    @IBAction func ap2(sender:UIButton)
    {
        reg2.backgroundColor = UIColor.red
        hon2.backgroundColor = UIColor.red
        ap2.backgroundColor = UIColor.green
    }
    @IBAction func reg3(sender:UIButton)
    {
        reg3.backgroundColor = UIColor.green
        hon3.backgroundColor = UIColor.red
        ap3.backgroundColor = UIColor.red
    }
    @IBAction func hon3(sender:UIButton)
    {
        reg3.backgroundColor = UIColor.red
        hon3.backgroundColor = UIColor.green
        ap3.backgroundColor = UIColor.red
    }
    @IBAction func ap3(sender:UIButton)
    {
        reg3.backgroundColor = UIColor.red
        hon3.backgroundColor = UIColor.red
        ap3.backgroundColor = UIColor.green
    }
    @IBAction func reg4(sender:UIButton)
    {
        reg4.backgroundColor = UIColor.green
        hon4.backgroundColor = UIColor.red
        ap4.backgroundColor = UIColor.red
    }
    @IBAction func hon4(sender:UIButton)
    {
        reg4.backgroundColor = UIColor.red
        hon4.backgroundColor = UIColor.green
        ap4.backgroundColor = UIColor.red
    }
    @IBAction func ap4(sender:UIButton)
    {
        reg4.backgroundColor = UIColor.red
        hon4.backgroundColor = UIColor.red
        ap4.backgroundColor = UIColor.green
    }
    @IBAction func reg5(sender:UIButton)
    {
        reg5.backgroundColor = UIColor.green
        hon5.backgroundColor = UIColor.red
        ap5.backgroundColor = UIColor.red
    }
    @IBAction func hon5(sender:UIButton)
    {
        reg5.backgroundColor = UIColor.red
        hon5.backgroundColor = UIColor.green
        ap5.backgroundColor = UIColor.red
    }
    @IBAction func ap5(sender:UIButton)
    {
        reg5.backgroundColor = UIColor.red
        hon5.backgroundColor = UIColor.red
        ap5.backgroundColor = UIColor.green
    }
    @IBAction func reg6(sender:UIButton)
    {
        reg6.backgroundColor = UIColor.green
        hon6.backgroundColor = UIColor.red
        ap6.backgroundColor = UIColor.red
    }
    @IBAction func hon6(sender:UIButton)
    {
        reg6.backgroundColor = UIColor.red
        hon6.backgroundColor = UIColor.green
        ap6.backgroundColor = UIColor.red
    }
    @IBAction func ap6(sender:UIButton)
    {
        reg6.backgroundColor = UIColor.red
        hon6.backgroundColor = UIColor.red
        ap6.backgroundColor = UIColor.green
    }
    @IBAction func reg7(sender:UIButton)
    {
        reg7.backgroundColor = UIColor.green
        hon7.backgroundColor = UIColor.red
        ap7.backgroundColor = UIColor.red
    }
    @IBAction func hon7(sender:UIButton)
    {
        reg7.backgroundColor = UIColor.red
        hon7.backgroundColor = UIColor.green
        ap7.backgroundColor = UIColor.red
    }
    @IBAction func ap7(sender:UIButton)
    {
        reg7.backgroundColor = UIColor.red
        hon7.backgroundColor = UIColor.red
        ap7.backgroundColor = UIColor.green
    }
    @IBAction func reg8(sender:UIButton)
    {
        reg8.backgroundColor = UIColor.green
        hon8.backgroundColor = UIColor.red
        ap8.backgroundColor = UIColor.red
    }
    @IBAction func hon8(sender:UIButton)
    {
        reg8.backgroundColor = UIColor.red
        hon8.backgroundColor = UIColor.green
        ap8.backgroundColor = UIColor.red
    }
    @IBAction func ap8(sender:UIButton)
    {
        reg8.backgroundColor = UIColor.red
        hon8.backgroundColor = UIColor.red
        ap8.backgroundColor = UIColor.green
    }

    

    @IBAction func save(sender: UIButton)
    {
        var count = 0.0
        let GradePerPeriodArray = [period1.text, period2.text, period3.text, period4.text, period5.text, period6.text, period7.text, period8.text]
        let RegularClassArray = [reg1.isEnabled, reg2.isEnabled, reg3.isEnabled, reg4.isEnabled, reg5.isEnabled, reg6.isEnabled, reg7.isEnabled, reg8.isEnabled]
        let HonorsClassArray = [hon1.isEnabled, hon2.isEnabled, hon3.isEnabled, hon4.isEnabled, hon5.isEnabled, hon6.isEnabled, hon7.isEnabled, hon8.isEnabled]
        let APClassArray = [ap1.isEnabled, ap2.isEnabled, ap3.isEnabled, ap4.isEnabled, ap5.isEnabled, ap6.isEnabled, ap7.isEnabled, ap8.isEnabled]
        
        for item in GradePerPeriodArray
        {
            for bool1 in RegularClassArray
                {
                    for bool2 in HonorsClassArray
                    {
                        for bool3 in APClassArray
                        {
                
                            if(item == "A+" || item == "A" || item == "A-" || item == "a+" || item == "a" || item == "a-" && bool3)
                            {
                                count += 5.0
                            }
                            else if(item == "B+" || item == "B" || item == "B-" || item == "b+" || item == "b" || item == "b-" && bool3)
                            {
                                count += 4.0
                            }
                            else if(item == "C+" || item == "C" || item == "C-" || item == "c+" || item == "c" || item == "c-" && bool3)
                            {
                                count += 3.0
                            }
                            else if(item == "D+" || item == "D" || item == "D-" || item == "d+" || item == "d" || item == "d-" && bool3)
                            {
                                count += 1.0
                            }
                            else if(item == "A+" || item == "A" || item == "A-" || item == "a+" || item == "a" || item == "a-" && bool2)
                            {
                                count += 4.5
                            }
                            else if(item == "B+" || item == "B" || item == "B-" || item == "b+" || item == "b" || item == "b-" && bool2)
                            {
                                count += 3.5
                            }
                            else if(item == "C+" || item == "C" || item == "C-" || item == "c+" || item == "c" || item == "c-" && bool2)
                            {
                                count += 2.5
                            }
                            else if(item == "D+" || item == "D" || item == "D-" || item == "d+" || item == "d" || item == "d-" && bool2)
                            {
                                count += 1.0
                            }
                            else if(item == "A+" || item == "A" || item == "A-" || item == "a+" || item == "a" || item == "a-" && bool1)
                            {
                                count += 5.0
                            }
                            else if(item == "B+" || item == "B" || item == "B-" || item == "b+" || item == "b" || item == "b-" && bool1)
                            {
                                count += 4.0
                            }
                            else if(item == "C+" || item == "C" || item == "C-" || item == "c+" || item == "c" || item == "c-" && bool1)
                            {
                                count += 3.0
                            }
                            else if(item == "D+" || item == "D" || item == "D-" || item == "d+" || item == "d" || item == "d-" && bool1)
                            {
                                count += 1.0
                            }

                            holder = count

                        }
                    }
                    
                }

        }
        
        let GPA = holder / Double(myClassPeriodWeighted.periods)
        myClassPeriodWeighted.GPA = GPA
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "weightedFinal")
        {
            let WeightedFinal : FinalWeightedViewController = segue.destination as! FinalWeightedViewController
            
            WeightedFinal.myClassPeriodWeighted2 = myClassPeriodWeighted
        }
    }
    

}
