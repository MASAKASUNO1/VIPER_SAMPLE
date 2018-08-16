//
//  HomeVSHomeRouter.swift
//  VIPER_SAMPLE
//
//  Created by MasanariTakigawa on 16/08/2018.
//  Copyright © 2018 Masanari Takigawa. All rights reserved.
//

import Foundation
import UIKit

class HomeRouter: HomeRouterProtocol {

   static func createHomeModule() -> UIViewController {

      let view = HomeView()
         let presenter: HomePresenterProtocol & HomeInteractorOutputProtocol = HomePresenter()
         let interactor: HomeInteractorInputProtocol = HomeInteractor()
         let router: HomeRouterProtocol = HomeRouter()

         view.presenter = presenter
         presenter.view = view
         presenter.router = router
         presenter.interactor = interactor
         interactor.presenter = presenter
      return view
   }

}