//
//  ViewController.swift
//  scrollview
//
//  Created by Christella on 2/20/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 397
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 340, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
    }

}

