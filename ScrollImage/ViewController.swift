//
//  ViewController.swift
//  ScrollImage
//
//  Created by Ksush Shishk on 12.05.2019.
//  Copyright © 2019 Pro Ksu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainScrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3")]

        for i in 0..<imageArray.count{
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            
        }
    }


}

