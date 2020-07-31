//
//  UIButton + Extra.swift
//  BoardGames
//
//  Created by Emad Albarnawi on 31/07/2020.
//  Copyright © 2020 Emad Albarnawi. All rights reserved.
//

import UIKit


extension UIButton {
    func configButton() {
        setShadow();
        styleButton();
    }
    func setShadow(){
        layer.shadowColor = UIColor.black.cgColor;
        layer.shadowOffset = .init(width: 0, height: 6);
        layer.shadowRadius = 8;
        layer.shadowOpacity = 0.5;
        clipsToBounds = true;
        layer.masksToBounds = false;
    }
    func shackButton(){
        let shake = CABasicAnimation(keyPath: "position");
        shake.duration = 0.1;
        shake.repeatCount = 2;
        shake.autoreverses = true;
        
        let fromPoint = CGPoint(x: center.x - 8, y: center.y);
        let fromValue = NSValue(cgPoint: fromPoint);
        
        let toPoint = CGPoint(x: center.x + 8, y: center.y);
        let toValue = NSValue(cgPoint: toPoint);
        
        shake.fromValue = fromValue;
        shake.toValue = toValue;
        
        
        layer.add(shake, forKey: "position");
    }
    func styleButton(){
        setTitleColor(.white, for: .normal);
        backgroundColor = #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1);
//        titleLabel?.font = UIFont(name: , size: 18);
        layer.cornerRadius = 25;
        layer.borderWidth = 3;
        layer.borderColor = UIColor.lightGray.cgColor;
    }
}
