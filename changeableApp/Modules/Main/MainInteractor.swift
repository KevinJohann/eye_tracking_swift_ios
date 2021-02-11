//
//  MainInteractor.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - MainInteractor
final class MainInteractor {
    weak var interactorOutput: MainInteractorOutputProtocol?
}

// MARK: - MainInteractorProtocol
extension MainInteractor: MainInteractorProtocol {}
