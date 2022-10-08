//
//  ViewControllerSC.swift
//  Hockey Techniques LLC
//
//  Created by Tim Drevitch on 7/8/19.
//  Copyright © 2019 Tim Drevitch. All rights reserved.
//

import UIKit

class ViewControllerSC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func SignUp(_ sender: UIButton) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string:"https://hockeytechniques.sportngin.com/register/form/842549116?_ga=2.190340267.1417816529.1560818332-1591880122.1558025721")! as URL, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
