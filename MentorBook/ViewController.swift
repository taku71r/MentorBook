//
//  ViewController.swift
//  MentorBook
//
//  Created by 清水拓郎 on 2020/05/15.
//  Copyright © 2020 清水拓郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!

    //表示するメンターの番号
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mentorArray.append(Mentor(name:"ながた", imageName: "nagata.jpg",course: "iPhone"))
        mentorArray.append(Mentor(name:"りょう", imageName: "ryo.jpg",course: "Unity"))
        mentorArray.append(Mentor(name:"たいてぃ", imageName: "taithi.jpg",course: "WebS,WebD"))
        
        setUI()
    }
    
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        index = index - 1
        setUI()
        
    }
    @IBAction func tugi(){
        index = index + 1
        setUI()
        
    }


}

