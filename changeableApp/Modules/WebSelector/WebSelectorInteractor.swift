//
//  WebSelectorInteractor.swift
//  changeableApp
//
//  Created by Kevin Torres on 02-11-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - WebSelectorInteractor
final class WebSelectorInteractor {
    weak var interactorOutput: WebSelectorInteractorOutputProtocol?
}

// MARK: - WebSelectorInteractorProtocol
extension WebSelectorInteractor: WebSelectorInteractorProtocol {}
