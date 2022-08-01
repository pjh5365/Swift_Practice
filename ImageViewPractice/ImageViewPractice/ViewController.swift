//
//  ViewController.swift
//  ImageViewPractice
//
//  Created by 박지혁 on 2022/08/01.
//
//여러장의 사진을 차례로 볼수있는앱
import UIKit

class ViewController: UIViewController {
    var img1 : UIImage?
    var img2 : UIImage?
    var img3 : UIImage?
    var img4 : UIImage?
    var imgNum = 0
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var btnNext: UIButton!
    @IBOutlet var btnPre: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        img1 = UIImage(named: "IMG_1.jpg")
        img2 = UIImage(named: "IMG_2.jpg")
        img3 = UIImage(named: "IMG_3.jpg")
        img4 = UIImage(named: "IMG_4.jpg")
        
        imageView.image = img1
    }

    @IBAction func btnNext(_ sender: UIButton) {
        imgNum += 1
        if((imgNum%4) == 0) {
            imageView.image = img1
        }
        else if((imgNum%4) == 1) {
            imageView.image = img2
        }
        else if((imgNum%4) == 2) {
            imageView.image = img3
        }
        else if((imgNum%4) == 3) {
            imageView.image = img4
        }
        
        if(imgNum == 5) {   //카운트가 너무 커지는것을 방지
            imgNum -= 4
        }
    }
    
    @IBAction func btnPre(_ sender: UIButton) {
        imgNum += 1
        if((imgNum%4) == 0) {
            imageView.image = img1
        }
        else if((imgNum%4) == 1) {
            imageView.image = img4
        }
        else if((imgNum%4) == 2) {
            imageView.image = img3
        }
        else if((imgNum%4) == 3) {
            imageView.image = img2
        }
        
        if(imgNum == 5) {   //카운트가 너무 커지는것을 방지
            imgNum -= 4
        }
    }
}

