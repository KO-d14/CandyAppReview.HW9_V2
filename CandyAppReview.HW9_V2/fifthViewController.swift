//
//  fifthViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/9/23.
//

// FIFTH TAB - ABOUT (ME)

import UIKit

class fifthViewController: UIViewController {

    
    
    @IBOutlet weak var fifthTabImageView: UIImageView!
    @IBOutlet weak var fifthTabLabel: UILabel!
    @IBOutlet weak var fifthTabTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fifthTabImageView.image = UIImage(named: "profilePic")
        fifthTabLabel.text = "About Me"
        fifthTabTextView.text = "Aloha! I am KO-d14, and I have a huge sweet tooth for candy! One of the things I love about candies is that they create a smile on everyone's faces! :)"
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
