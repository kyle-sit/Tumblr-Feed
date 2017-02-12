//
//  FullScreenPhotoViewController.swift
//  Tumblr Feed
//
//  Created by Nick Hasjim on 2/9/17.
//  Copyright © 2017 Kyle Sit. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var photoImage: UIImageView!
    

    override func viewDidLoad() {
        scroll.contentSize = photoImage.image!.size;
        scroll.delegate = self

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoImage;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
