//
//  CharacterDetailViewController.swift
//  CharactersApp
//
//  Created by Dameion on 6/13/23.
//

import UIKit
import Foundation
import SDWebImage
import Combine

class CharacterDetailViewController: UIViewController {
    
    @IBOutlet weak var characterIcon: UIImageView!
    @IBOutlet weak var characterText: UILabel!
    
    public var character: CharacterModel?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupView()
    }

    private func setupView() {
        guard let character = self.character else {
            return
        }

        self.characterText?.text = character.Text
        if let characterIconURL = URL(string: "https://duckduckgo.com\(character.Icon.URL)") {
            self.characterIcon?.sd_setImage(with: characterIconURL, placeholderImage: UIImage(named: "placeholder"))
        }
    }
}

