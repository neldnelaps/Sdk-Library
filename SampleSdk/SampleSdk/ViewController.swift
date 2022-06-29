//
//  ViewController.swift
//  SampleSdk
//
//  Created by Nelaps on 29.06.2022.
//

import UIKit
import Sdk_Library

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var currentTask =  BrandsAPI.brandsGetBrands(filterFrom: 0, filterCount: 10){
            (result, error) in guard result != nil else {
                return
            }
        }

        var currentTaskCard = CardAPI.cardGetCards(){
            (resultCard, errorCard) in guard resultCard != nil else {
                return
            }
        }
        
       
        // Do any additional setup after loading the view.
    }
    
    /*func cardGetCards() async {
        do {
            let result = try await CardAPI.cardGetCards()
            print(result)
        } catch {
            print("Oops!")
        }
    }*/


}

