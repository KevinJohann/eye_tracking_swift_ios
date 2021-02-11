//
//  WebSelectorProtocols.swift
//  changeableApp
//
//  Created by Kevin Torres on 02-11-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - View
protocol WebSelectorViewProtocol: AnyObject {}

// MARK: - Interactor
protocol WebSelectorInteractorProtocol: AnyObject {}

// MARK: - InteractorOutput
protocol WebSelectorInteractorOutputProtocol: AnyObject {}

// MARK: - Presenter
protocol WebSelectorPresenterProtocol: AnyObject {
    func onContinueButtonPressed(with url: String?)
}

// MARK: - Router
protocol WebSelectorRouterProtocol: AnyObject {
    static func createModule() -> WebSelectorViewController
    func mainScreenRequested(open url: String)
}
