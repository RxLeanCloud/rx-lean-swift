//
//  AVRemoveOperation.swift
//  RxLeanCloudSwift
//
//  Created by WuJun on 02/11/2017.
//  Copyright © 2017 LeanCloud. All rights reserved.
//

import Foundation

public class AVRemoveOperation: IAVFieldOperation {
    var value: Any
    init(value: Any) {
        self.value = value
    }
    public func encode() -> Any {
        //return AVCorePlugins.sharedInstance.avEncoder.encode(value: self.value)
        return ["__op":"Remove"];
    }

    public func mergeWithPrevious(previous: IAVFieldOperation?) -> IAVFieldOperation {
        return self
    }

    public func apply(oldValue: Any?, key: String) -> Any {
        return self.value
    }
}
