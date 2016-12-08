//
//  FinalWeightedViewController.swift
//  GPA Calculator
//
//  Created by Student on 12/7/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class FinalWeightedViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!

    var myClassPeriodWeighted2 = ClassPeriod()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if(myClassPeriodWeighted2.GPA <= 1.0)
        {
            image.image = #imageLiteral(resourceName: "Fail")
        }
        else if(myClassPeriodWeighted2.GPA <= 2.5)
        {
            image.image = #imageLiteral(resourceName: "average")
        }
        else if(myClassPeriodWeighted2.GPA <= 3.5)
        {
            image.image = #imageLiteral(resourceName: "AMAZING")
        }
        else
        {
            image.image = #imageLiteral(resourceName: "great")
        }
        
        
        
        let alert = UIAlertController(title: "Your GPA is: " + "\(myClassPeriodWeighted2.GPA)", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        present(alert, animated: true, completion: nil)

        
        
    }


}
