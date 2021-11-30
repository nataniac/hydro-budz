//
//  ChangeImageViewController.swift
//  Profile
//
//  Created by Labiba Chowdhury on 11/29/21.
//

import UIKit

class ChangeImageViewController: UIViewController {

    var image: UIImage!
    
    @IBOutlet weak var changeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage.image = image
        
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

}
