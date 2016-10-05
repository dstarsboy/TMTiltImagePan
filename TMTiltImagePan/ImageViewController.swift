//
//  ImagePanViewController.swift
//  SwiftImagePan
//
//  Created by Travis Ma on 7/9/15.
//  Copyright (c) 2015 Travis Ma. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var image: UIImage?
    var imagePanViewController: ImagePanViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePanViewController = ImagePanViewController()
        imagePanViewController!.willMove(toParentViewController: self)
        self.addChildViewController(imagePanViewController!)
        self.view.addSubview(self.imagePanViewController!.view)
        imagePanViewController!.view.frame = self.view.bounds
        imagePanViewController!.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        imagePanViewController!.didMove(toParentViewController: self)
        imagePanViewController!.configureWithImage(image!)
    }
    
}
