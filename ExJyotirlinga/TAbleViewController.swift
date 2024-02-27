//
//  TAbleViewController.swift
//  ExJyotirlinga
//
//  Created by RLogixxTraining on 11/10/23.
//

import UIKit

class TAbleViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tblView: UITableView!
    var name = String()
    
    var arrNames = [["name":"Somnath","city": "Gujarat","image" :UIImage(named: "Somanth")],["name":"Nageshwar","city":"Maharashtra","image":UIImage(named: "Nageshwar")],[ "name":"Bhimashankar","city":"Maharashtra","image":UIImage(named: "Bhimashankar")], ["name":"Trimbakeshwar","city":"Maharashtra" ,"image":UIImage(named: "Trimbakeshwar")], ["name":"Grishneshwar","city":"Maharashtra","image":UIImage(named: "Grishneshwar")], ["name":"Vaidyanath","city":"Jharkhand","image":UIImage(named: "Vaidyanath")], ["name":"Mahakaleshwar","city":"Madhya Pradesh","image": UIImage(named: "Mahakaleshwar")], ["name":"Omkareshwar","city":"Madhya Pradesh","image":UIImage(named: "Omkareshwar")] ,["name":"Kashi Vishwanath","city":"Uttar Pradesh","image":UIImage(named: "Kashi Vishwanath")], ["name":"Kedarnath","city":"Uttarakhand","image":UIImage(named: "Kedarnath")], ["name":"Rameshwaram","city":"Tamil Nadu","image":UIImage(named: "Rameshwaram")],["name":"Mallikarjuna","city":"Andhra Pradesh","image":UIImage(named: "Mallikarjuna")]]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellReuseIdentifier = "cellReuseIdentifier"
        
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
        if (cell == nil) {
            cell = UITableViewCell(style:UITableViewCell.CellStyle.subtitle, reuseIdentifier:cellReuseIdentifier)
          }
        
        cell?.textLabel?.text = arrNames[indexPath.row]["name"] as? String
        name = cell?.textLabel?.text ?? "0"
        cell?.detailTextLabel?.text = arrNames[indexPath.row]["city"] as? String
        
        
        
    
    return cell!

    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
        var ab = arrNames[indexPath.row]["name"] ?? "123"
        destVC.placeNameText = ab as! String 
        navigationController?.pushViewController(destVC, animated: true)
    }
    
    
    
    
    
    
}
