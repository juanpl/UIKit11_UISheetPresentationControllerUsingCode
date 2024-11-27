//
//  ViewController.swift
//  UIKit11_UISheetPresentationControllerUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 26/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscribe to SwiftBeta!"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewController()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    func presentSheetViewController() {
        let viewControllerToPresent = SheetViewController()
        
        if let sheet = viewControllerToPresent.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.selectedDetentIdentifier = .medium
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 20
        }
        
        present(viewControllerToPresent, animated: true)
    }

}

