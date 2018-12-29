//
//  ViewController.swift
//  Apollo_Swift_Example
//
//  Created by Chad Chen on 2018-12-29.
//  Copyright © 2018 Andong Chen. All rights reserved.
//

import UIKit
import Apollo
import RxSwift

class ViewController: UIViewController {
  private let bag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
//    getMarkUser()
    
    /* Reactive way to fetch data */
    apollo.rx.fetch(query: UserInfoQuery())
      .debug()
      .subscribe(onSuccess: { data in
        print(data.user!.name!)
        print(data.user!.email)
      })
      .disposed(by:bag)
  }

  
  /* regular way to fetch data */
  func getMarkUser() {
    let getUserQL = UserInfoQuery()
    apollo.fetch(query: getUserQL) { (result, error) in
      print(result ?? "nil")
      print(error ?? "nil")
      guard let user = result?.data?.user else {
        print("There is No Data")
        return
      }
      print("username: \(String(describing: user.name))")
      print("Email: \(user.email)")
    }
  }

}

