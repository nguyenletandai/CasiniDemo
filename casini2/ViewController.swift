//
//  ViewController.swift
//  casini2
//
//  Created by daicudu on 1/9/19.
//  Copyright © 2019 daicudu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail Item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }
    
    var detailItem: NSDate? {
        didSet {
            //Update View
            configureView()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

