//
//  WebSelectorViewController.swift
//  changeableApp
//
//  Created by Kevin Torres on 02-11-20.
//  Copyright © 2020 Kevin Torres. All rights reserved.
//

import UIKit

// MARK: - WebSelectorViewController
final class WebSelectorViewController: UIViewController {
    @IBOutlet weak var continueButton: UIButton! {
        didSet {
            continueButton.addTarget(self, action: #selector(onContinueButtonPressed(sender:)), for: .touchUpInside)
        }
    }

    @IBOutlet weak var urlTextField: UITextField!

    var presenter: WebSelectorPresenterProtocol?
}

// MARK: - Targets
extension WebSelectorViewController {
    @objc func onContinueButtonPressed(sender: UIButton) {
        let url = urlTextField.text
        presenter?.onContinueButtonPressed(with: url)
    }
}

// MARK: - Life cycles
extension WebSelectorViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

// MARK: - WebSelectorViewProtocol
extension WebSelectorViewController: WebSelectorViewProtocol {}
