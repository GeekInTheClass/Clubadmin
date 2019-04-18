//
//  ViewController.swift
//  Clubadmin
//
//  Created by cadenzah on 21/03/2019.
//  Copyright © 2019 cadenzah. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage1: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    var TaskForView:Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let childView = UIView(frame: CGRect(x:10, y:10, width:100, height: 100))
        self.view.addSubview(childView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        myLabel.text = "뷰가 나타났다!"
//        let pororiImage:UIImage = #imageLiteral(resourceName: "porori")
//        myImage1.image = pororiImage
        //UI 업데이트
        print(TaskForView?.taskName)
        // view controller에 있는 label에 누른 taskName을 출력.
        detailLabel.text = TaskForView?.taskName
    }
    
}
