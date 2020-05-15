//
//  SecondViewController.swift
//  Animals
//
//  Created by Harpreet Kour on 15/05/20.
//  Copyright © 2020 Passion. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var nameOfAnimal = ""
    var descriptionOfAnimal = ""
     var newImage: UIImage!
    
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var imageOfAnimal: UIImageView!
    @IBOutlet weak var animalDescriptionLabel: UILabel!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        animalNameLabel.text = nameOfAnimal
        animalDescriptionLabel.text = descriptionOfAnimal
        imageOfAnimal.image = newImage
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
