//
//  IUserController.swift
//  RxLeanCloudSwift
//
//  Created by WuJun on 27/05/2017.
//  Copyright © 2017 LeanCloud. All rights reserved.
//

import Foundation
import RxSwift

public protocol IUserController {
    func logIn(username: String, password: String) -> Observable<IObjectState>
}
