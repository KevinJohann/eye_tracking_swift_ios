//
//  WebSelectorPresenter.swift
//  changeableApp
//
//  Created by Kevin Torres on 02-11-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - WebSelectorPresenter
final class WebSelectorPresenter {
    weak var view: WebSelectorViewProtocol?
    var interactor: WebSelectorInteractorProtocol?
    var router: WebSelectorRouterProtocol?
}

// MARK: - WebSelectorPresenterProtocol
extension WebSelectorPresenter: WebSelectorPresenterProtocol {
    func onContinueButtonPressed(with url: String?) {
        guard let url = url else { return }
        router?.mainScreenRequested(open: url)
    }
}

// MARK: - WebSelectorInteractorOutputProtocol
extension WebSelectorPresenter: WebSelectorInteractorOutputProtocol {}
