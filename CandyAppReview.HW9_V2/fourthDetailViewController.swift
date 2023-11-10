//
//  fourthDetailViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/9/23.
//

import UIKit

class fourthDetailViewController: UIViewController {

   
    @IBOutlet weak var fourthTabImageView: UIImageView!
// EXTRA I ADDED
    @IBOutlet weak var additionalFourthTabLabel: UILabel!
    
    //Part 10: Open up the secondDetailViewController.swift file (2 points)
     //1.
     var imagePass: String?

     override func viewDidLoad() {
         super.viewDidLoad()
 //Part 10-#2:
         if let imageName = imagePass
         {
                     fourthTabImageView.image = UIImage(named: imageName)
             additionalFourthTabLabel.text = "🎃🎃🎃  HAPPY HALLOWEEN! 🎃🎃🎃 "
             additionalFourthTabLabel.textColor = UIColor.orange

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

}
