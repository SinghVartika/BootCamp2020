//
//  FirstViewController.swift
//  MyApp
//
//  Created by TTN on 02/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "First VC"
        self.view.backgroundColor = .cyan
    }
    @IBAction func ButtonTapped(_ sender: Bool)
    {
        self.dismiss(animated: true, completion: nil)
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
