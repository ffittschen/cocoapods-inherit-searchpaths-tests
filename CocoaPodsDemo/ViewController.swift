//
//  ViewController.swift
//  CocoaPodsDemo
//
//  Created by Florian Fittschen on 02.06.17.
//  Copyright © 2017 Florian Fittschen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func didTapChangeTitle(_ sender: UIButton) {
        title = "CocoaPods"
    }

}

extension ViewController {
    class func loadFromStoryboard() -> ViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
}
