//
//  FullScreenPhotoViewController.swift
//  Tumblr
//
//  Created by Deepthy on 9/13/17.
//  Copyright © 2017 Deepthy. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var fullScreenImgView: UIImageView!
    
    var fullImg = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        fullScreenImgView.image = fullImg
    }
    
    @IBAction func onClose(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}

extension FullScreenPhotoViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return fullScreenImgView
    }
}

