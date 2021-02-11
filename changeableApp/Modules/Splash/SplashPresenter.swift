//
//  SplashPresenter.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - SplashPresenter
final class SplashPresenter {
    weak var view: SplashViewProtocol?
    var interactor: SplashInteractorProtocol?
    var router: SplashRouterProtocol?
}

// MARK: - SplashPresenterProtocol
extension SplashPresenter: SplashPresenterProtocol {
    func onViewDidLoad() {
        router?.presentWebSelectorModule()
    }
}

// MARK: - SplashInteractorOutputProtocol
extension SplashPresenter: SplashInteractorOutputProtocol {}
