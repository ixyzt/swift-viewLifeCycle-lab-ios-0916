//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var dieSurface: [UILabel]!
    
    
    @IBOutlet var dieRollResult: [UILabel]!
    
    var currentCount = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for surface in dieSurface {
            surface.isHidden = true
        }
        for surface in dieRollResult {
            surface.isHidden = true
        }
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        hideDieRollResult()
        let diceRoll = randomDiceRoll()
        dieSurfaceHide(a: diceRoll)
        diceRollResult(a: diceRoll)
        counter()
//        dieRollResult[0].text = String(diceRoll)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
        
    }
    
    
    func dieSurfaceHide(a: Int) {
        for surface in dieSurface {
            surface.isHidden = true
        }
        
        switch a {
        case 1:
            dieSurface[4].isHidden = false
        case 2:
            dieSurface[2].isHidden = false
            dieSurface[6].isHidden = false
        case 3:
            dieSurface[2].isHidden = false
            dieSurface[4].isHidden = false
            dieSurface[6].isHidden = false
        case 4:
            dieSurface[0].isHidden = false
            dieSurface[2].isHidden = false
            dieSurface[6].isHidden = false
            dieSurface[8].isHidden = false
        case 5:
            dieSurface[0].isHidden = false
            dieSurface[2].isHidden = false
            dieSurface[4].isHidden = false
            dieSurface[6].isHidden = false
            dieSurface[8].isHidden = false
        case 6:
            dieSurface[0].isHidden = false
            dieSurface[2].isHidden = false
            dieSurface[3].isHidden = false
            dieSurface[5].isHidden = false
            dieSurface[6].isHidden = false
            dieSurface[8].isHidden = false
        default:
            break
        }
        
    }
    
    func diceRollResult(a: Int) {
        
        
        switch a {
        case 1:
            dieRollResult[currentCount].text = String(a)
            dieRollResult[currentCount].isHidden = false
        case 2:
            dieRollResult[currentCount].text = String(a)
            dieRollResult[currentCount].isHidden = false
        case 3:
            dieRollResult[currentCount].text = String(a)
            dieRollResult[currentCount].isHidden = false
        case 4:
            dieRollResult[currentCount].text = String(a)
            dieRollResult[currentCount].isHidden = false
        case 5:
            dieRollResult[currentCount].text = String(a)
            dieRollResult[currentCount].isHidden = false
        case 6:
            dieRollResult[currentCount].text = String(a)
            dieRollResult[currentCount].isHidden = false
        default:
            break
            
        }
        
    }
    
    func counter() {
        currentCount += 1
        if currentCount == 6 {
            currentCount = 0
        }
    }
    
    func hideDieRollResult() {
        if currentCount == 0 {
            for surface in dieRollResult {
                surface.isHidden = true
            }
        }
    }
    
//    func rollResultCheck() -> Int {
//        if dieRollResult[0].text != "" {
//            return 0
//        } else if dieRollResult[1].text != "" {
//            return 1
//        } else if dieRollResult[2].text != "" {
//            return 2
//        } else if dieRollResult[3].text != "" {
//            return 3
//        } else if dieRollResult[4].text != "" {
//            return 4
//        } else if dieRollResult[5].text != "" {
//            return 5
//        } else {
//            dieRollResult[0].text = ""
//            dieRollResult[1].text = ""
//            dieRollResult[2].text = ""
//            dieRollResult[3].text = ""
//            dieRollResult[4].text = ""
//            dieRollResult[5].text = ""
//            return 0
//        }
//    }




}
