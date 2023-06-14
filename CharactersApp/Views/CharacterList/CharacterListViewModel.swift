//
//  CharacterListViewModel.swift
//  CharactersApp
//
//  Created by Dameion on 6/13/23.
//

import Foundation
import Combine

class CharacterListViewModel {
    
    @Published var characterData: [CharacterModel] = []
    
    private var cancellables = Set<AnyCancellable>()
    private let network: NetworkManagerType
    
    init(network: NetworkManagerType = NetworkManager()) {
        self.network = network
    }
    
    func fetchData() async {
        do {
            let model: CharacterModelContainer = try await network.getCharacters()
            characterData = model.RelatedTopics
            
        } catch {
            print("Dooh!: \(error)")
        }
    }
    
}
