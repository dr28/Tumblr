//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Deepthy on 9/13/17.
//  Copyright © 2017 Deepthy. All rights reserved.
//

import UIKit
import AFNetworking

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    var imageUrl: URL?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.setImageWith(imageUrl!)
    }

    @IBAction func onImageTap(_ sender: Any) {        
        performSegue(withIdentifier: "fullscreenphoto", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationViewController = segue.destination as! FullScreenPhotoViewController
        destinationViewController.fullImg = photoImageView.image!
    }
}
