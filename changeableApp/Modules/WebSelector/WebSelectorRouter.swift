//
//  WebSelectorRouter.swift
//  changeableApp
//
//  Created by Kevin Torres on 02-11-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation
import UIKit

// MARK: - WebSelectorRouter
final class WebSelectorRouter {
    weak var viewController: UIViewController?
}

// MARK: - WebSelectorRouterProtocol
extension WebSelectorRouter: WebSelectorRouterProtocol {
    static func createModule() -> WebSelectorViewController {
        let view = WebSelectorViewController.storyboardViewController()
        let presenter = WebSelectorPresenter()
        let interactor = WebSelectorInteractor()
        let router = WebSelectorRouter()

        view.presenter = presenter
        interactor.interactorOutput = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.viewController = view
        
        return view
    }

    func mainScreenRequested(open url: String) {
        let vc = MainRouter.createModule()
        vc.urlString = url
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
