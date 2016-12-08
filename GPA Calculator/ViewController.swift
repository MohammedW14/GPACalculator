//
//  ViewController.swift
//  GPA Calculator
//
//  Created by Student on 12/5/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var periodLabel: UITextField!
    @IBOutlet weak var save: UIButton!
    @IBOutlet weak var weighted: UIButton!
    @IBOutlet weak var unweighted: UIButton!

    
    var myClassPeriod = ClassPeriod()

    override func viewDidLoad()
    {
        super.viewDidLoad()

        periodLabel.keyboardType = UIKeyboardType.numberPad
    }

    @IBAction func save(sender: UIButton)
    {
         myClassPeriod.periods = Int(periodLabel.text!)!
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        
        if(segue.identifier == "weightedSegue")
        {
            let DestinationViewController : WeightedView = segue.destination as! WeightedView
            
            DestinationViewController.myClassPeriodWeighted = myClassPeriod
            
            
        }
        
        if(segue.identifier == "unweightedSegue")
        {
            let DestinationView : UnweightedView = segue.destination as! UnweightedView
            
            DestinationView.myClassPeriodUnweighted = myClassPeriod
        }
    }
    
    
}

