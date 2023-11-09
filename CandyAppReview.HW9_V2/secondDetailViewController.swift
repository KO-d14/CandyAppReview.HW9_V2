//
//  secondDetailViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/7/23.
//

// NOTE TO SELF: DONT MOVE ANYTHING; KEEP AS IS

// READ !!
// This is for the SECOND ROW/TAB - SECOND SCREEN

    
/*
 H9_FromTableviewToDetailView: On Your Own:
 Part 1: Open your Candy Review App Project in Xcode (Part 1 completed) (No guideline given) & Add a new viewcontroller (6 points):
 1. Add a new viewcontroller to your storyboard. Place that viewcontroller next to your second tab viewcontroller. <--- DONE
 2. Add an image view to that view controller. <--- DONE
 3. Set up a .swift file for that viewcontroller and name that file, “secondDetailViewController” <--- DONE
 4. Connect the “face to the brain” <--- DONE
 5. >>>>(code below)
 6. In your Assets folder, add the image of the first candy listed in your tableview for tab 2. Please rename your image to the candy name for easy reference and to avoid typos.  <--- DONE
 */
import UIKit

// READ!!
// **** FOR THE IMAGE PASSING

class secondDetailViewController: UIViewController
{

//>>>H9 Part 1-#5: Create an IBOutlet for the image view and name it, “imageView”
   @IBOutlet weak var imageView: UIImageView!
    
//Part 10: Open up the secondDetailViewController.swift file (2 points)
    //1. We have to create a String variable in our secondDetailViewController so that it can receive the string (holding the image name) from the viewcontroller (the one with the table view)
    var imagePass: String?

    override func viewDidLoad() {
        super.viewDidLoad()
//Part 10-#2: in secondDetailViewController.swift in func viewDidLoad(), we have to write a few lines of code to set our image to display in the image view.

        if let imageName = imagePass
        {
                    imageView.image = UIImage(named: imageName)

        }
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

} //class closing bracket


    /*  GUIDELINE SAID the following instructions to be done in ???

     "secondDetailViewController"?
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//>>>P8-#1 Above func viewDidLoad(), declare a new variable which is an array named, “categoryOneImageData” which holds string objects
        var categoryOneImagesData = [String]()

//>>> P1- 5. Create an IBOutlet for the image view and name it, “imageView”
    
//>>> P10-1. We have to create a String variable in our secondDetailViewController so that it can receive the string (holding the image name) from the viewcontroller (the one with the table view)
    var imagePass: String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //>>>Part 8-#2. Now, we have to set up the viewcontroller to get the data from the property list. Within the code block for func viewDidLoad() .
                let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
                let dict = NSDictionary(contentsOfFile: path!)
                categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
              
     

        // Do any additional setup after loading the view.
        
    } //func viewDidLoad closing bracket
    
//>>>P7-#1. Please add this new tableview function, “didSelectRowAt” and add one line of code in that function’s code block that indicates that a row has been selected:
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
    tableView.deselectRow(at: indexPath, animated: true)
    }
    
//>>>P9-#2
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //>>>P9-#3
            if segue.identifier == "mySegue"

            {
                let s1 = segue.destination as! secondDetailViewController
                let imageIndex = tableView.indexPathForSelectedRow?.row
                s1.imagePass = categoryOneImagesData[imageIndex!]

            }
//P10-2. In secondDetailViewController.swift in func viewDidLoad(), we have to write a few lines of code to set our image to display in the image view.
        if let imageName = imagePass
        {
            imageView.image = UIImage(named: imageName)
        }
     */
        
 


