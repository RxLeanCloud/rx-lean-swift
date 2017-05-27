//
//  AVCommandResponse.swift
//  RxLeanCloudSwift
//
//  Created by WuJun on 23/05/2017.
//  Copyright © 2017 LeanCloud. All rights reserved.
//

import Foundation

public class AVCommandResponse: HttpResponse {
    public var jsonBody: [String: Any]? {
        get {
            let json = self.body as? [String: Any]
            if json != nil {
                return json
            }
            return nil
        }
    }
}
