//
//  SplashProtocols.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - View
protocol SplashViewProtocol: AnyObject {}

// MARK: - Interactor
protocol SplashInteractorProtocol: AnyObject {}

// MARK: - InteractorOutput
protocol SplashInteractorOutputProtocol: AnyObject {}

// MARK: - Presenter
protocol SplashPresenterProtocol: AnyObject {
    func onViewDidLoad()
}

// MARK: - Router
protocol SplashRouterProtocol: AnyObject {
    static func createModule() -> SplashViewController
    func setMainView()
    func presentWebSelectorModule()
}
