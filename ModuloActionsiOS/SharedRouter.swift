//
//  SharedRouter.swift
//  ModuloActionsiOS
//
//  Created by Lucas on 03/07/20.
//  Copyright © 2020 Lucas. All rights reserved.
//
import UIKit

public protocol Storyboarded {
    func instantiate(storyboardName: String, bundle: Bundle?) -> UIViewController
}

extension String: Storyboarded {
    public func instantiate(storyboardName: String, bundle: Bundle?) -> UIViewController {
        let id = self
        let storyboard = UIStoryboard(name: storyboardName, bundle: bundle)
        // swiftlint:disable force_cast
        return storyboard.instantiateViewController(withIdentifier: id)
        // swiftlint:enable force_cast
    }
}

class SharedRouter {
    
    static let navigationController = UINavigationController();
    
    func navegarParaModuloNativo() {
        let nativoViewController = "TelaNativaViewController".instantiate(storyboardName: "StoryboardNativo", bundle: Bundle(path: "com.manobray.ModuloNativoiOS"))
        SharedRouter.navigationController.pushViewController(nativoViewController, animated: true);
    }
    
    func sair() {
        SharedRouter.navigationController.popToRootViewController(animated: true)
    }
    
    
}
