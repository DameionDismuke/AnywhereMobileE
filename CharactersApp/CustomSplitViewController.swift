//
//  CustomSplitViewController.swift
//  CharactersApp
//
//  Created by Dameion  on 6/13/23.
//

import Foundation
import UIKit

class CustomSplitViewController: UISplitViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        preferredDisplayMode = .automatic
    }
    
    func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
