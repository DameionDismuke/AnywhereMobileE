//
//  CharacterDetailViewModel.swift
//  CharactersApp
//
//  Created by Dameion on 6/13/23.
//

import Foundation
import Combine

class CharacterDetailViewModel {
    @Published var characterImage: URL? = nil
    @Published var characterDescription: String? = nil

    init() {}

    func update(characterImage: String, characterDescription: String) {
        self.characterDescription = characterDescription
        if let imageURLString = getImageLink() {
            self.characterImage = URL(string: imageURLString)
        }
    }

    private func getImageLink() -> String? {
        return "https://duckduckgo.com\(characterImage)"
    }
}
