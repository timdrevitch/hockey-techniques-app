//
//  ViewController.swift
//  Hockey Techniques LLC
//
//  Created by Tim Drevitch on 5/16/19.
//  Copyright © 2019 Tim Drevitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var HTImage: UIImageView!
    @IBOutlet weak var HTLabel: UILabel!
    
    @IBOutlet weak var SummerCampsButton: UIButton!
    @IBOutlet weak var PrivateLessonsButton: UIButton!
    @IBOutlet weak var StoriesNewsButton: UIButton!
    @IBOutlet weak var YouTubeVideosButton: UIButton!
    @IBOutlet weak var SocialMediaButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HTLabel.alpha = 0
        HTImage.alpha = 0
    }

    //after img & logo appear, buttons slide into screen from left
    fileprivate func slideButtons() {
        UIView.animate(withDuration: 1.5, delay: 0.0, animations: {
            self.SummerCampsButton.frame.origin.x += 290
        })
        UIView.animate(withDuration: 1.5, delay: 0.2, animations: {
            self.PrivateLessonsButton.frame.origin.x += 290
        })
        UIView.animate(withDuration: 1.5, delay: 0.4, animations: {
            self.StoriesNewsButton.frame.origin.x += 290
        })
        UIView.animate(withDuration: 1.5, delay: 0.6, animations: {
            self.YouTubeVideosButton.frame.origin.x += 290
        })
        UIView.animate(withDuration: 1.5, delay: 0.8, animations: {
            self.SocialMediaButton.frame.origin.x += 290
        })
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //Hockey Techniques image and label gradually appear
        UIView.animate(withDuration: 1.5, animations: {
            self.HTImage.alpha = 1
        })
        UIView.animate(withDuration: 1.0, animations: {
            self.HTLabel.alpha = 1
        })
        
        //Buttons slide into scene
        UIView.animate(withDuration: 1.5, animations: {
            self.slideButtons()
        })
    }
    
    //Open youtube
    @IBAction func YouTubePressed(_ sender: UIButton) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string:"https://www.youtube.com/channel/UC7vFSXcz0peJCaqR11kwakA")! as URL, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
        }
    }
    
    //Open website
    @IBAction func StoriesPressed(_ sender: UIButton) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string:"https://hockeytechniques.sportngin.com")! as URL, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

