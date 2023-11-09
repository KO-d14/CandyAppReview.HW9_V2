//
//  detailViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/7/23.
//

import UIKit

// FOR THE FEATURED CANDY SECTION

class detailViewController: UIViewController {

//outlets for the CRUNCH 
    @IBOutlet weak var crunchLabel: UILabel!
    @IBOutlet weak var crunchImageView: UIImageView!
    @IBOutlet weak var crunchTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crunchImageView.image = UIImage(named: "crunch")
        crunchLabel.text = "Crunch"
        crunchTextView.text = " "
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
