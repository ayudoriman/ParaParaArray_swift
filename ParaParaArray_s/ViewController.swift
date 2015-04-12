//
//  ViewController.swift
//  ParaParaArray_s
//
//  Created by KFCC on 2015/04/12.
//  Copyright (c) 2015年 KFCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number:Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var gazo: UIImageView!
    var imgArray:[String] = ["img0.jpg", "img1.jpg","img2.jpg"]
   
    @IBAction func clear(){
        number = 0
        sum(number)
    }
    
    @IBAction func prev(){
        if(number>=1){
            number = number-1
        }else{
            number = 2
        }
        sum(number)
    }
    
    func sum(number:Int){
        gazo.image = UIImage(named: imgArray[number])
        label.text = "\(number+1)番目"
        
    }
    
    @IBAction func next(){
        if(number<=1){
            number = number+1
        }else{
            number = 0
        }
        sum(number)
    }
    
    override func viewDidLoad() {
        gazo.image = UIImage(named: imgArray[0])
        label.text = "1番目"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

