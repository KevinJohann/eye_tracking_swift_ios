//
//  MainRouter.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation
import UIKit

// MARK: - MainRouter
final class MainRouter {
    weak var viewController: UIViewController?
}

// MARK: - MainRouterRouterProtocol
extension MainRouter: MainRouterProtocol {
    static func createModule() -> MainViewController {
        let view = MainViewController.storyboardViewController()
        let presenter = MainPresenter()
        let interactor = MainInteractor()
        let router = MainRouter()

        view.presenter = presenter
        interactor.interactorOutput = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.viewController = view
        
        return view
    }
}
