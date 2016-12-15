//
//  O_OrderInformationViewController.swift
//  PerseusShelfUnion
//
//  Created by dawen wang on 16/12/15.
//  Copyright © 2016年 XHVolunteeriOS. All rights reserved.
//

import UIKit

class O_OrderInformationViewController: UIViewController {

    
    @IBOutlet weak var segment: UISegmentedControl!

    @IBOutlet weak var information: UIView!
    @IBOutlet weak var plan: UIView!
    @IBOutlet weak var evaluation: UIView!
    @IBAction func viewchanged(_ sender: UISegmentedControl) {
        
        information.isHidden = true
        plan.isHidden = true
        evaluation.isHidden = true
        switch segment.selectedSegmentIndex {
        case 0:
            information.isHidden = false
            
        case 1:
            plan.isHidden = false
            
        case 2:
            evaluation.isHidden = false
        default:
            break
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        information.isHidden = false
        plan.isHidden = true
        evaluation.isHidden = true
 
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