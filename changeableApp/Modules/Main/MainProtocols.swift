//
//  MainProtocols.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - View
protocol MainViewProtocol: AnyObject {}

// MARK: - Interactor
protocol MainInteractorProtocol: AnyObject {}

// MARK: - InteractorOutput
protocol MainInteractorOutputProtocol: AnyObject {}

// MARK: - Presenter
protocol MainPresenterProtocol: AnyObject {}

// MARK: - Router
protocol MainRouterProtocol: AnyObject {
    static func createModule() -> MainViewController
}
