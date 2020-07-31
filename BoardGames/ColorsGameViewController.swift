//
//  ViewController.swift
//  BoardGames
//
//  Created by Emad Albarnawi on 31/07/2020.
//  Copyright © 2020 Emad Albarnawi. All rights reserved.
//

import UIKit

class ColorsGameViewController: UIViewController {

    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var randomizeButton: UIButton!
    
    let colors: [UIColor] = [#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)];
    let actions: [String] = ["اليد اليسار", "اليد اليمين", "الرجل اليسار", "الرجل اليمين"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomizeButton.configButton();
    }
    
    func getRandomColor() -> UIColor {
        let colorIndex = Int.random(in: 0 ... (colors.count - 1));
        return colors[colorIndex];
    }
    func getRandomAction() -> String {
        
        let actionIndex = Int.random(in: 0 ... (actions.count - 1));
        return actions[actionIndex];
    }

    @IBAction func randomButtonClicked(_ sender: Any) {
        let color = getRandomColor();
        let action = getRandomAction();
        
        configurRandomization(withColor: color, withAction: action);
        randomizeButton.shackButton();
        
    }
    
    func configurRandomization(withColor color: UIColor, withAction action: String){
        view.backgroundColor = color;
        actionLabel.text = action;
    }
    
}

