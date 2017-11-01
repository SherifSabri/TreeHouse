//
//  ViewController.swift
//  FunFacts
//
//  Created by Sherif Sabri on 7/4/17.
//  Copyright © 2017 Sherif Sabri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactsLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    //creating an instance of the FactProvider Object
    let factProvider = FactProvider()
    let colorProvider = BackGroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactsLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        
        funFactsLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }

}

