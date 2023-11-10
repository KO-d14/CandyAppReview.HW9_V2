//
//  ViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/7/23.
//

// Completed PART 1 Steps thru following given results video -- NO GUIDELINES (It's a "part 1" of the Part 1/ pre step before part 1 in "secondDetailViewController" 

//**** H9_FromTableviewToDetailView  PART 2 ****

// INSTRUCTIONS
/*
 On Your Own:
 PART 1: Open your Candy Review App Project in Xcode (Part 1 completed) & Add a new viewcontroller (6 points):
1. Add a new viewcontroller to your storyboard. Place that viewcontroller next to your second tab viewcontroller. <-- DONE
2. Add an image view to that view controller. <-- DONE
 Set up a .swift file for that viewcontroller and name that file, “secondDetailViewController” <-- DONE
 4. Connect the “face to the brain” <-- DONE
 5. >>> code below
 6. In your Assets folder, add the image of the first candy listed in your tableview for tab 2. <-- DONE
 
 PART 2--- EXPLANATION
 
 PART 3
 #1-4. Property list setup
 
 PART 4-- EXPLANATION
 
 PART 5
 Part 4: explanation
 Part 5: Adding data to Property List (6 points)
 1. (~~~~~read in guidline if needed~~~~~)
 2. In the property list, let’s create an array that will hold the name of the image we want to display in the secondDetailViewController. <--- DONE
 3. Select the “Root” row in the property list and press the “+” button one time: <--- DONE
 4. Rename “New Item” to “CategoryOneImages” and use the dropdown menu to change  the type from String to Array. <--- DONE
 5. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 6. Ok, we’ve created an array in our property list that will store our image names for our Category one candies. Let’s add the name of our first image into the array. Select “+” of the array to add the New Item.<--- DONE
 7. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 8. TO OPEN the CategoryOneImages Array, select the “>”. When it is open the icon will like this “v”
 9. Now that the array is open, you can select “+” to add item 0.
 10. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 11. (~~~~~~~~~~~~~~~~~~~~~~~~~~)
 
(NOTE: I think kumu misnumbered the parts; likely a 6 & not a 7)
Part 7: Add another table view function called, tableView(_:didSelectRowAt:) to your tab 2 viewcontroller (2 points)
  1. >>>(code below)
  
Part 8: Set up the second tab Viewcontroller to pass data from the pList (2 points)
  1. >>>(code below)
  2. >>>(code below)
  
Part 9: We need to set up data to pass in the Segue (3 points)
 1. Create a segue from the prototype cell and give that segue the identifier “mySegue”. <--- DONE
 2. >>>(code below)
 3. >>>(code below)

 Part 10: Open up the secondDetailViewController.swift file (2 points
1.  >>>(code below)
2. In secondDetailViewController.swift in func viewDidLoad(), we have to write a few lines of code to set our image to display in the image view.
 4. Run the app and check to see that the image is passed via the segue from the selected cell. Here’s the result when I select the first cell on my tableview!
 5. Record your simulator (working project) and submit your link in Laulima for this assignment by tonight at 11:55pm in order to receive 10 points. Late recording submissions will result in -6 points.


*/

// READ !!
// THIS IS THE "MAIN/HOME PAGE" 
import UIKit

class ViewController:  UIViewController
{
    
    //Outlets for the homepage
    @IBOutlet weak var featuredCandyImageView: UIImageView!
    @IBOutlet weak var featuredCandyLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var learnMoreButton: UIButton!
    
    //>>>Part 8-#1 Above func viewDidLoad(), declare a new variable which is an array named, “categoryOneImageData” which holds string objects
        var categoryOneImagesData = [String]()
      

        override func viewDidLoad()
        {
            backgroundImageView.image = UIImage(named: "HalloweenMainCover")
            featuredCandyImageView.image = UIImage(named: "JapaneseSnack_HatoSable")
            
            featuredCandyLabel.text = "Featured Candy: \n Hato Sable"
            
            learnMoreButton.backgroundColor = UIColor.purple
            learnMoreButton.setTitleColor(.white, for: .normal)
            learnMoreButton.setTitle("Learn More", for: .normal)

            /*
            // !!!!!!!!! add labelcolr bg and text
    //>>>Part 8-#2. Now, we have to set up the viewcontroller to get the data from the property list. Within the code block for func viewDidLoad() .
            let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
            let dict = NSDictionary(contentsOfFile: path!)
            categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
         
             
             */
            
            
// THIS IS FOR THE FEATURED CANDY IMAGE
               // backgroundImageView.image = "HalloweenMainCover"
          //  let image = Image("HalloweenMainCover")
  /*  if let image = UIImage(named: "crunch.jpeg") {
                // Set the UIImage as the image for the UIImageView using the IBOutlet
                featuredImageView.image = image
            } else {
                print("Image not found")
            }
            */
            
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        } //func viewDidLoad closing bracket
    

  
}

