//
//  ViewController.swift
//  CardsApp
//
//  Created by Abai Kush on 25/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tanjirouOutlet: UIButton!
    @IBOutlet weak var nezukoOutlet: UIButton!
    @IBOutlet weak var inoskeOutlet: UIButton!
    @IBOutlet weak var zenitsuOutlet: UIButton!
    
    var heroesType: heroesModel = .tanjiro
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func personTapped(_ sender: UIButton) {
       
        switch sender.tag{
        case 1:
            print("1")
            heroesType = .tanjiro
        case 2:
            print("2")
            heroesType = .nezuko
        case 3:
            print("3")
            heroesType = .inoske
        case 4:
            print("4")
            heroesType = .zenitsu
        default:
            print("Default")
            heroesType = .tanjiro
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let DestinationVC = segue.destination as? DetailedVC
        
        DestinationVC?.heroesType2 = self.heroesType
    }
}

