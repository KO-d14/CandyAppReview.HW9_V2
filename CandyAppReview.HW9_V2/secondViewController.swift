//
//  secondViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/7/23.
//

// THIS IS THE PAGE WITH THE TABLEVIEW
// 1st TAB - CHOCOLATE 
import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
    {
        //>>>Part 8-#1 Above func viewDidLoad(), declare a new variable which is an array named, “categoryOneImageData” which holds string objects
            var categoryOneImagesData = [String]()
          
        
    /*Complete this part on your own prior to 11/2(Thurs) class*/
        //!!!!!!!!!!! put this in secondViewctonroller
        var chocolateCandyArray = ["Crunch", "KitKat", "Three Musketeers", "Twix"]
        var ratingsArray = ["★★★★★", "★★★★☆", "★★★★☆", "★★★★☆"]
        

       @IBOutlet weak var tableView: UITableView!
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            //DISPLAYS THE ROWS
            return chocolateCandyArray.count
        }//func tableView #OFROWSINSECTION closing bracket
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            //TO GET CELL'S TITLE & SUBTITLE<-- change name to "SUBTITLE" in attributes under doc outline 
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let text = chocolateCandyArray[indexPath.row]
        //connection to the subtitle
            cell.detailTextLabel?.text = ratingsArray[indexPath.row]
            cell.textLabel?.text = text
            return cell
        }//func tableView CELLFORROWAT closing bracket
      
    //>>>Part7-#1. Please add this new tableview function, “didSelectRowAt” and add one line of code in that function’s code block that indicates that a row has been selected:
        // SHOWS WHAT WILL  BE DISPLAYED
      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)

                  {
                      tableView.deselectRow(at: indexPath, animated: true)
                  }//func tableView Closing bracket
      
    
      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    //>>>Part 9-#3
              if segue.identifier == "mySegue"

              {
                  let s1 = segue.destination as! secondDetailViewController
                  let imageIndex = tableView.indexPathForSelectedRow?.row
                  s1.imagePass = categoryOneImagesData[imageIndex!]

              }

          }
      
    override func viewDidLoad()
    {
//>>>Part 8-#2. Now, we have to set up the viewcontroller to get the data from the property list. Within the code block for func viewDidLoad() .
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryOneImagesData = dict!.object(forKey:"CategoryOneImages") as! [String]
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } //func viewDidLoad closing bracket

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// THIS IS THE BACKGROUND IMAGE sized for iPHONE 11


/*
                    // Create a UIImageView
                          let imageView = UIImageView()

                          // Set the image to display
                          imageView.image = UIImage(named: "HalloweenMainCover")

                    // Set the frame (position and size) of the image view
                          imageView.frame = CGRect(x: -20, y: 50, width: 435, height: 950)
                    
                    // Add the image view to your view controller's view
                          self.view.addSubview(imageView)
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

