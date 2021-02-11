//
//  SplashInteractor.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - SplashInteractor
final class SplashInteractor {
    weak var interactorOutput: SplashInteractorOutputProtocol?
}

// MARK: - SplashInteractorProtocol
extension SplashInteractor: SplashInteractorProtocol {}
