//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by shahid panchily on 18/10/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var titleImageView: UIImageView!
    
    @IBOutlet weak var detailButton: UIButton!
    @IBOutlet weak var labelView: UIView!
    

    @IBOutlet weak var imageCollectionView: UICollectionView!
    
   
    
     var items = ["Appetizes","Dim Sum","Salads & Soups","Sushi","5","6","7","8"]
    var foodItems : [String] = ["food1","food2","food3","food4","food5","food6","food7","food7","food8",]
    
     var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageCollectionView.delegate = self
        imageCollectionView.dataSource = self
        model.getResult()

        labelViewShadow()
        
       
        navigationController?.navigationBar.backgroundColor = UIColor.black
        detailButton.backgroundColor = UIColor.init(cgColor: CGColor(srgbRed: 155/255, green: 35/255, blue: 42/255, alpha: 1))
        detailButton.layer.cornerRadius = 8
        
        
       
    }
    func labelViewShadow() {
           
           labelView.layer.masksToBounds = true
           labelView.layer.borderWidth = 0.2
           labelView.layer.shadowColor = CGColor.init(srgbRed: 255/255, green: 255/255, blue: 255/255, alpha: 1)
           labelView.layer.shadowOffset = CGSize(width: 1, height: 1)
           labelView.layer.shadowOpacity = 0.5
           labelView.layer.shadowRadius = 5
           labelView.layer.cornerRadius = 2
           
       }
    
    
    
   


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.items.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as? ImageCollectionViewCell
        
        cell?.foodLabel.text = self.items[indexPath.row]
        cell?.foodImageView.image = UIImage.init(named: foodItems[indexPath.row])
        cell?.layer.cornerRadius = 5
        
        cell?.foodLabel.backgroundColor = UIColor.init(cgColor: CGColor(srgbRed: 53/255, green: 55/255, blue: 53/255, alpha: 1))
        
        return cell!
        
        
        
        
    }
    
}
extension ViewController : UICollectionViewDelegateFlowLayout{

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 15, left: 15, bottom: 50, right: 15)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewSize = collectionView.frame.size.width - 55
        
        return CGSize(width: collectionViewSize/2, height: collectionViewSize/2)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
   
}




