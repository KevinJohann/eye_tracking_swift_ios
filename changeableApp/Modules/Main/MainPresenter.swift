//
//  MainPresenter.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import Foundation

// MARK: - MainPresenter
final class MainPresenter {
    weak var view: MainViewProtocol?
    var interactor: MainInteractorProtocol?
    var router: MainRouterProtocol?
}

// MARK: - MainPresenterProtocol
extension MainPresenter: MainPresenterProtocol {}

// MARK: - MainInteractorOutputProtocol
extension MainPresenter: MainInteractorOutputProtocol {}
