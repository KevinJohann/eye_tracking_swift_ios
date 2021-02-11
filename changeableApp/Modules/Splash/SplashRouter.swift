//
//  SplashRouter.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation
import UIKit

// MARK: - SplashRouter
final class SplashRouter {
    weak var viewController: UIViewController?
}

// MARK: - SplashRouterRouterProtocol
extension SplashRouter: SplashRouterProtocol {
    func setMainView() {
        let vc = MainRouter.createModule()
        viewController?.present(vc, animated: true)
    }

    func presentWebSelectorModule() {
        let vc = WebSelectorRouter.createModule()
        viewController?.present(vc, animated: true)
    }

    static func createModule() -> SplashViewController {
        let view = SplashViewController.storyboardViewController()
        let presenter = SplashPresenter()
        let interactor = SplashInteractor()
        let router = SplashRouter()

        view.presenter = presenter
        interactor.interactorOutput = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.viewController = view
        
        return view
    }
}
