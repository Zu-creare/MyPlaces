//
//  MainViewController.swift
//  MyPlaces
//
//  Created by M on 13.03.2021.
//

import UIKit

class MainViewController: UITableViewController {

    let places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
            
        cell.nameLabel.text = places[indexPath.row].name
        cell.TypeLabel.text = places[indexPath.row].type
        cell.locationLabel.text = places[indexPath.row].location
        cell.imageOfPlace.image = UIImage(named: places[indexPath.row].image)
            
        
        
        
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        
        cell.imageOfPlace.clipsToBounds = true
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let place = places[indexPath.row]

        let vc = PlaceDetailsViewController()
        _ = vc.view
        
        vc.place = place
        vc.titleLabel.text = place.name

        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    
    
    
      /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {
        
    }
}
