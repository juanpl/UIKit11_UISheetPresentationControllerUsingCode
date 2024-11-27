//
//  SheetViewController.swift
//  UIKit11_UISheetPresentationControllerUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 26/11/24.
//
import UIKit

class SheetViewController: UIViewController {
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.text = "Suscribe to SwiftBeta!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        view.addSubview(swiftBetaLabel)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        guard let presentationController = presentationController as? UISheetPresentationController else {
            return
        }
        
        presentationController.detents = [.medium(), .large()]
        presentationController.selectedDetentIdentifier = .medium
        presentationController.prefersGrabberVisible = true
        presentationController.preferredCornerRadius = 20

    }
}
