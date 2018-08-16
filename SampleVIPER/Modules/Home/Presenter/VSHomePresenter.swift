//
//  HomeVSHomePresenter.swift
//  VIPER_SAMPLE
//
//  Created by MasanariTakigawa on 16/08/2018.
//  Copyright © 2018 Masanari Takigawa. All rights reserved.
//

import Foundation
import UIKit

class HomePresenter: HomePresenterProtocol {

   var view: HomeViewProtocol?
   var interactor: HomeInteractorInputProtocol?
   var router: HomeRouterProtocol?

	func viewDidload() {
       self.view?.showLoading()
     }
}

extension HomePresenter : HomeInteractorOutputProtocol {

}
