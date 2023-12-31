//
//  thirdViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/9/23.
//

// THIS IS THE PAGE WITH THE TABLEVIEW
// 2ND TAB - JAPANESE CANDIES

import UIKit

class thirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //>>>Part 8-#1
    //Change names as necessary 
        var categoryTwoImagesData = [String]()
      
    var japaneseSnackArray = ["Hato Sable","Sapporo Potato", "Country Maam", "Yogurt"]
    var ratingsArray = ["★★★★★", "★★★★★", "★★★★★", "★★★★★"]
    
  
    
    @IBOutlet weak var thirdTabTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //DISPLAYS THE ROWS
        return japaneseSnackArray.count
    }//func tableView #OFROWSINSECTION closing bracket
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //TO GET CELL'S TITLE & SUBTITLE<-- change name to "SUBTITLE" in attributes under doc outline
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = japaneseSnackArray[indexPath.row]
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
              let s1 = segue.destination as! thirdDetailViewController
              let imageIndex = thirdTabTableView.indexPathForSelectedRow?.row
              s1.imagePass = categoryTwoImagesData[imageIndex!]

          }
  }
      
      override func viewDidLoad()
      {
  //>>>Part 8-#2.
          let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
          let dict = NSDictionary(contentsOfFile: path!)
          categoryTwoImagesData = dict!.object(forKey:"CategoryTwoImages") as! [String]
          
          super.viewDidLoad()
          // Do any additional setup after loading the view.
      } //func viewDidLoad closing bracket
  
}
