//
//  detailViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/7/23.
//

import UIKit

// FOR THE FEATURED CANDY SECTION

class detailViewController: UIViewController {

//outlets for the HATO SABLE <--- CHANGED SNACK
    @IBOutlet weak var featuredSnackImageView: UIImageView!
    @IBOutlet weak var featuredSnackTextView: UITextView!
    @IBOutlet weak var featuredSnackLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        featuredSnackImageView.image = UIImage(named: "JapaneseSnack_HatoSabre")
        featuredSnackLabel.text = "Hato Sabre"
        featuredSnackTextView.text = "Hato Sabre, a Japanese snack favorite, offers a delightful crunch and subtle sweetness in every bite. These slender biscuit sticks are known for their light texture and delicate flavor, often featuring hints of butter or vanilla. They're a perfect accompaniment to a hot beverage or simply as a standalone treat. "
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
