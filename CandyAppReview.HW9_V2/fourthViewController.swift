//
//  fourthViewController.swift
//  CandyAppReview.HW9_V2
//
//  Created by Aina Kodaira on 11/9/23.
//

// THIS IS THE PAGE WITH THE TABLEVIEW
// 3RD TAB - SUGARED CANDIES
import UIKit

class fourthViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    //>>>Part 8-#1
    //Change names as necessary
        var categoryThreeImagesData = [String]()
      
    
    var sugarCandiesArray = ["Coca-Cola Gummies", "Gummy Bears", "RingPop", "Candy Corn"]
    var ratingsArray = ["4 Stars ★★★★☆", "4 Stars ★★★★☆", "3 Stars ★★★☆☆", "4 Stars ★★★★☆"]

    @IBOutlet weak var fourthTabTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //DISPLAYS THE ROWS
        return sugarCandiesArray.count
    }//func tableView #OFROWSINSECTION closing bracket
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //TO GET CELL'S TITLE & SUBTITLE<-- change name to "SUBTITLE" in attributes under doc outline
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = sugarCandiesArray[indexPath.row]
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
              let s1 = segue.destination as! fourthDetailViewController
              let imageIndex = fourthTabTableView.indexPathForSelectedRow?.row
              s1.imagePass = categoryThreeImagesData[imageIndex!]

          }//if closing bracket
  } //func prepare closing bracket
    
    //>>>Part 8-#2.
    override func viewDidLoad()
    {
//>>>Part 8-#2.
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        categoryThreeImagesData = dict!.object(forKey:"CategoryThreeImages") as! [String]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    } //func viewDidLoad closing bracket

}
