//
//  ShowPlantViewController.swift
//  Profile
//
//  Created by Labiba Chowdhury on 11/29/21.
//

import UIKit

class ShowPlantViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var img: UIImage!
    
    let array = [UIImage(named: "plant1"),UIImage(named: "plant2"),UIImage(named: "plant3"),UIImage(named: "plant4"),UIImage(named: "plant5"),UIImage(named: "plant6"),UIImage(named: "plant7"),UIImage(named: "plant8")]
    let nameArray = ["img 1","img 2","img 3","img 4","img 5","img 6","img 7","img 8"]
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlantTypeCollectionViewCell", for: indexPath) as! PlantTypeCollectionViewCell
        cell.plantImageView.image = array[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "ChangeImageViewController") as? ChangeImageViewController
        vc?.image = array[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
//        performSegue(withIdentifier: "segue2", sender: array[indexPath.row])
//        let main:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let destination = main.instantiateViewController(identifier: "ChangeImageViewController") as! ChangeImageViewController
//        destination.image = array[indexPath.row]
//
//        self.navigationController?.pushViewController(destination, animated: true)
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let dest = segue.destination as? ChangeImageViewController{
//            dest.image = sender as? UIImage
//        }
    }
}
//
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        collectionView.collectionViewLayout = UICollectionViewFlowLayout()
//    }
//}
//extension ShowPlantViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return types.count
//    }
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlantTypeCollectionViewCell", for: indexPath) as! PlantTypeCollectionViewCell
//        cell.setup(with: types[indexPath.row])
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let pic = collectionView.cellForItem(at: indexPath) as! PlantTypeCollectionViewCell
//
//
//
//    }
//}
//
//
extension ShowPlantViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 300)
    }

}

