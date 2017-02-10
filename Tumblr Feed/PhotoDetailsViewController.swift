//
//  PhotoDetailsViewController.swift
//  Tumblr Feed
//
//  Created by Nick Hasjim on 2/9/17.
//  Copyright © 2017 Kyle Sit. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var tumblrPhoto: UIImageView!
    
    
    var post = NSDictionary!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let photos = post?.value(forKeyPath: "photos") as? [NSDictionary] {
            let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageUrl = URL(string: imageUrlString!) {
                cell.photoImage.setImageWith(imageUrl)
            } else {
            }
        } else {
        }


        // Do any additional setup after loading the view.
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
