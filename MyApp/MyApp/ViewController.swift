//
//  ViewController.swift
//  MyApp
//
//  Created by TTN on 02/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pushOutlet: UIButton!
    @IBOutlet weak var presentOutlet: UIButton!
    override func viewDidLoad() {
      
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Initial VC"
        self.view.backgroundColor = UIColor.brown
    }
    @IBAction func pushButtonTapped(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }

    @IBAction func presentButtonTapped(_ sender: Bool){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let vc = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        self.present(vc, animated: true, completion: nil)
    }

}






