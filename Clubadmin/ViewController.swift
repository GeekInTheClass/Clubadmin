//
//  ViewController.swift
//  Clubadmin
//
//  Created by cadenzah on 21/03/2019.
//  Copyright © 2019 cadenzah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let childView = UIView(frame: CGRect(x:10, y:10, width:100, height: 100))
        self.view.addSubview(childView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myLabel.text = "뷰가 나타났다!"
        let pororiImage:UIImage = #imageLiteral(resourceName: "porori")
        myImage1.image = pororiImage
        
    }
    
}
