//
//  IJson.swift
//  RxLeanCloudSwift
//
//  Created by WuJun on 27/05/2017.
//  Copyright © 2017 LeanCloud. All rights reserved.
//

import Foundation

public protocol IJsonConvertible {
    func ToJSON() -> [String: Any]
}
