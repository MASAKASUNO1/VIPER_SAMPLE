//
//  HomeVSHomeContract.swift
//  VIPER_SAMPLE
//
//  Created by MasanariTakigawa on 16/08/2018.
//  Copyright © 2018 Masanari Takigawa. All rights reserved.
//
import Foundation
import UIKit

protocol HomeRouterProtocol : class {
   static func createHomeModule() -> UIViewController
}

protocol HomeViewProtocol : class {
   var presenter: HomePresenterProtocol? { get set}
   func showError()
   func showLoading()
}

protocol HomePresenterProtocol : class {

   var view: HomeViewProtocol? { get set }
   var interactor: HomeInteractorInputProtocol? { get set }
   var router: HomeRouterProtocol? { get set }

   func viewDidload()
}


protocol HomeInteractorInputProtocol: class {
   var presenter: HomeInteractorOutputProtocol? {  get set }
}

protocol HomeInteractorOutputProtocol: class {
}
