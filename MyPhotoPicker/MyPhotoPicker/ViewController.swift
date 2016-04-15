//
//  ViewController.swift
//  MyPhotoPicker
//
//  Created by Yiqing Luo on 4/14/16.
//  Copyright © 2016 Yiqing Luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

  var photoImageView = UIImageView(frame: CGRectMake(100, 100, 200, 200))
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    
    self.view.addSubview(photoImageView)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func openPhotoLibrary(sender: AnyObject) {
    
    var photoPicker        = UIImagePickerController()
    photoPicker.delegate   = self
    photoPicker.sourceType = .PhotoLibrary
    
    self.presentViewController(photoPicker, animated: true, completion: nil)
  }
  
  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]){
    
    photoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    self.dismissViewControllerAnimated(false, completion: nil)
  }
//  @IBAction func openVideoLibrary(sender: AnyObject) {
//
//    var videoPicker = UIImagePickerController()
//    videoPicker.delegate = self
//    videoPicker.sourceType = .Camera
//    
//    self.presentViewController(videoPicker, animated: true, completion: nil)
//    
//  }
}

