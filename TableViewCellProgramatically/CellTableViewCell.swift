//
//  CellTableViewCell.swift
//  TableViewCellProgramatically
//
//  Created by Apogee on 10/9/17.
//  Copyright © 2017 Apogee. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    var ProfilePhoto: UIImageView!
    var UserName: UILabel!
    var Desc: UILabel!
    var Message: UILabel!
    var myButton1 : UIButton!
    var myButton2 : UIButton!

    
    var CellHeight = CGFloat()
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:)")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        CellHeight = 85
        
        ProfilePhoto = UIImageView()
        ProfilePhoto.frame = CGRect(x: 20, y: CellHeight/2-20, width: 50, height: 50)
        ProfilePhoto.layer.borderWidth = 1
        ProfilePhoto.layer.masksToBounds = false
        ProfilePhoto.layer.borderColor = UIColor.green.cgColor
        ProfilePhoto.layer.cornerRadius = ProfilePhoto.frame.height/2
        ProfilePhoto.clipsToBounds = true
        contentView.addSubview(ProfilePhoto)
        
//        Desc = UILabel()
//        Desc.frame = CGRect(x:10, y: CellHeight/2-20,width: 60,height: 40)
//        Desc.text = "djsfhjkds djhsg dghj dsjfg dsgjhj sdfjhjk sdfjhkj fsdkjh fdsjkh"
//        Desc.numberOfLines = 0
//        Desc.lineBreakMode = NSLineBreakMode.byWordWrapping
//        Desc.sizeToFit()
//        contentView.addSubview(Desc)
        
        UserName = UILabel()
        UserName.frame = CGRect(x: ProfilePhoto.frame.origin.x+ProfilePhoto.frame.width+10 , y: 20, width: 100, height: CellHeight/2-20)
        UserName.textColor = UIColor.black
        contentView.addSubview(UserName)
        
        Message = UILabel()
        Message.frame = CGRect(x: ProfilePhoto.frame.origin.x+ProfilePhoto.frame.width+10, y: UserName.frame.origin.y+UserName.frame.size.height+10, width: 100, height: CellHeight/2-20)
        Message.textColor = UIColor.black
        contentView.addSubview(Message)
        
        myButton1 = UIButton()
        myButton1.frame = CGRect(x:UserName.frame.origin.x+UserName.frame.width+10, y: 20, width: 50, height: CellHeight-40)
        myButton1.setImage(UIImage(named: "barak ubama"), for: UIControlState.normal)
        contentView.addSubview(myButton1)
        
        myButton2 = UIButton()
//        myButton2.frame = CGRect(x: myButton1.frame.origin.x+myButton1.frame.width+10, y: 20, width: 50, height: 50)
        let screenWidth = UIScreen.main.bounds.width
        
        myButton2.frame = CGRect(x:screenWidth-60 , y: 20, width: 50, height: 50)
        myButton2.setImage(UIImage(named: "modi"), for: UIControlState.normal)
        myButton2.layer.borderWidth = 1
        myButton2.layer.masksToBounds = false
        myButton2.layer.borderColor = UIColor.green.cgColor
        myButton2.layer.cornerRadius = ProfilePhoto.frame.height/2
        myButton2.clipsToBounds = true
        contentView.addSubview(myButton2)
    }

}
