//
//  ConcentrationThemeChooserViewController.swift
//  Concentration
//
//  Created by Ema Tomicic on 01.09.21.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
        "Sports": "⚽️🏀🏈⚾️🎾🏉🏏🏑🏓⛷⛳️🏎",
        "Animals": "🦙🦛🦝🦘🦚🦜🦞🦡🦢🦥🦦🦧🦨🦮🦩🐕‍🦺🐘",
        "Faces": "😀😆☺️🙃😍😛😝🤨😎😏"
    ]
    
//    @IBAction func changeTheme(_ sender: Any) {
//        if let cvc = splitViewDetailConcentrationViewController {
//            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
//                cvc.theme = theme
//            }
//        } else {
//            performSegue(withIdentifier: "Choose Theme", sender: sender)
//        }
//    }
    
    private var splitViewDetailConcentrationViewController: ConcentrationViewController? {
        return splitViewController?.viewControllers.last as? ConcentrationViewController
    }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
    

}
