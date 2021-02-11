//
//  SplashViewController.swift
//  changeableApp
//
//  Created by Kevin Torres on 20-09-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import UIKit

// MARK: - SplashViewController
final class SplashViewController: UIViewController {
    var presenter: SplashPresenterProtocol?
}

// MARK: - Life cycles
extension SplashViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.onViewDidLoad()
    }
}

// MARK: - SplashViewProtocol
extension SplashViewController: SplashViewProtocol {}
