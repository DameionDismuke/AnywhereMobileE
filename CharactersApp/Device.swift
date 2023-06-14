//
//  Device.swift
//  CharactersApp
//
//  Created by Dameion  on 6/13/23.
//

import UIKit

enum DeviceType {
    case iPhone
    case iPad
}

func getCurrentDeviceType() -> DeviceType {
    if UIDevice.current.userInterfaceIdiom == .pad {
        return .iPad
    } else {
        return .iPhone
    }
}
