//
//  CharacterModel.swift
//  CharactersApp
//
//  Created by Dameion on 6/13/23.
//

import Foundation

struct CharacterModelContainer: Decodable {
    let RelatedTopics: [CharacterModel]
}

struct CharacterModel: Decodable {
    let Icon: Icon
    let Text: String
}

struct Icon: Decodable {
    let URL: String
}
