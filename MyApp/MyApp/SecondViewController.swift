//
//  SecondViewController.swift
//  MyApp
//
//  Created by TTN on 02/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second VC"
        self.view.backgroundColor = .darkGray
        // Do any additional setup after loading the view.
    }
    @IBAction func pushButtonTapped(_ sender: Bool){
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        self.navigationController!.pushViewController(vc, animated: true)}
    
    @IBAction func popBottonTapped(_ sender: Bool){
        self.navigationController?.popViewController(animated: true)
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
