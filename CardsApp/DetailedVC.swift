//
//  DetailedVC.swift
//  CardsApp
//
//  Created by Abai Kush on 25/6/22.
//

import UIKit

class DetailedVC: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButtonOutlet: UIButton!
    @IBOutlet weak var heroesImage: UIImageView!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    
    var heroesType2: heroesModel?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1)
        
        if let heroesType = heroesType2{
            titleLabel.text = heroesType.title
            mainTitleLabel.text = heroesType.title
            heroesImage.image = heroesType.heroesImage
            subTitle.text = heroesType.subTitle
        }
    }
    @IBAction func backButtonTapped(_ sender: UIButton) {
        dismiss(animated: false)
    }
}
