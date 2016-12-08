//
//  FinalViewControllerUnweighted.swift
//  GPA Calculator
//
//  Created by Student on 12/7/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class FinalViewControllerUnweighted: UIViewController
{
    @IBOutlet weak var image: UIImageView!
    var myClassPeriodUnweighted2 = ClassPeriod()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        if(myClassPeriodUnweighted2.GPA <= 1.0)
        {
            image.image = #imageLiteral(resourceName: "Fail")
        }
        else if(myClassPeriodUnweighted2.GPA <= 2.0)
        {
            image.image = #imageLiteral(resourceName: "average")
        }
        else if(myClassPeriodUnweighted2.GPA <= 3.0)
        {
            image.image = #imageLiteral(resourceName: "AMAZING")
        }
        else
        {
            image.image = #imageLiteral(resourceName: "great")
        }
        
        
        
        let alert = UIAlertController(title: "Your GPA is: " + "\(myClassPeriodUnweighted2.GPA)", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        present(alert, animated: true, completion: nil)
        
        

    }


}
