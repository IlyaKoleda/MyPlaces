//
//  MainTableViewController.swift
//  MyPlaces
//
//  Created by Илья on 11.02.2022.
//

import UIKit

class MainTableViewController: UITableViewController {

    let restaurantNames = ["Балкан Гриль", "Бочка", "Вкусные истории",
                           "Дастархан", "Индокитай", "Классик",
                           "Шок", "Bonsai", "Burger Heroes",
                           "Kitchen", "Love&Life", "Morris Pub",
                           "Sherlock Holmes", "Speak Easy", "X.O"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell
        cell?.labelName.text = restaurantNames[indexPath.row]
        cell?.imageOfPlaces.image = UIImage(named: restaurantNames[indexPath.row])
        cell?.imageOfPlaces.layer.cornerRadius = (cell?.imageOfPlaces.frame.size.height)!  / 2
        cell?.imageOfPlaces.clipsToBounds = true
        return cell!
    }

    // MARK: - Table View delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
