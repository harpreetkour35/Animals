//
//  ViewController.swift
//  Animals
//
//  Created by Harpreet Kour on 14/05/20.
//  Copyright © 2020 Passion. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainTable: UITableView!
    
    var animals = K.animalNames
    var animalDesc = K.animalDescription
   
    var selectedAnimal = ""
    var selectedAnimalDesc = ""
    var selectedImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        mainTable.delegate = self
        mainTable.dataSource = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MyCustomCell
        cell.animalNameLabel.text = animals[indexPath.row]
        cell.animalImage.image = UIImage(named: animals[indexPath.row])
        cell.animalImage.layer.cornerRadius = 7
        cell.animalImage.layer.borderWidth = 3
        cell.animalImage.layer.borderColor = UIColor.orange.cgColor
        cell.animalImage.clipsToBounds = true
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCell.AccessoryType.checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCell.AccessoryType.checkmark
        }
        
        
        selectedAnimal = animals[indexPath.row]
        selectedAnimalDesc = animalDesc[indexPath.row]
        selectedImage = UIImage(named: animals[indexPath.row])
        
        self.performSegue(withIdentifier: K.segueName , sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        vc.nameOfAnimal = self.selectedAnimal
        vc.descriptionOfAnimal = self.selectedAnimalDesc
        vc.newImage = selectedImage
        
    }
    
}

