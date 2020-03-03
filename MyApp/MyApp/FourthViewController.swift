//
//  FourthViewController.swift
//  MyApp
//
//  Created by TTN on 02/03/20.
//  Copyright © 2020 TTN. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Fourth VC"
        self.view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
    }
//    @IBAction func popButtonTapped(_ sender: Bool){
//         let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let vc = storyboard.instantiateViewController(withIdentifier: "ViewController")
//            self.navigationController?.popToViewController(vc, animated: true)
//        }
//
//    @IBAction func poptoButtonTapped(_ sender: Bool){
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
//        self.navigationController?.popToViewController(vc, animated: true)
//    }
    @IBAction func popButtonTapped(_ sender: Bool){
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func DesiredPopButtonTapped(_ sender: Bool){
    let viewControllers = (navigationController?.viewControllers)
        for vc in viewControllers! {
        if vc is SecondViewController{
            self.navigationController?.popToViewController(vc, animated: true)
        }
    }
}
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


