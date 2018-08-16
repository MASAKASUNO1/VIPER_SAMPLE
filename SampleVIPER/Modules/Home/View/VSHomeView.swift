//
//  HomeVSHomeView.swift
//  VIPER_SAMPLE
//
//  Created by MasanariTakigawa on 16/08/2018.
//  Copyright © 2018 Masanari Takigawa. All rights reserved.
//

import Foundation
import UIKit

class HomeView: UIViewController {

   var presenter: HomePresenterProtocol?

   override func viewDidLoad() {
      super.viewDidLoad()
      self.presenter?.viewDidload()
   }
   
   override func loadView() {
      super.loadView()
      self.assemble()
   }

}

extension HomeView : HomeViewProtocol{

   func showError() {

   }
   func showLoading() {

   }
}
