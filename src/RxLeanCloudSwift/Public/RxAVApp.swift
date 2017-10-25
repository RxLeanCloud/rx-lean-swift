//
//  RxAVApp.swift
//  RxLeanCloudSwift
//
//  Created by WuJun on 22/05/2017.
//  Copyright © 2017 LeanCloud. All rights reserved.
//

import Foundation

struct GlobalConst {
    static let api_public_cn = "api.leancloud.cn"
    static let push_router_public_cn = "router.g0.push.leancloud.cn/v1/route?appId={0}"
}

public class RxAVApp {
    var appId: String
    var appKey: String
    var apiVersion: String = "/1.1"
    var schema: String = "https://"
    var api: String = GlobalConst.api_public_cn
    var engine: String = GlobalConst.api_public_cn
    var stats: String = GlobalConst.api_public_cn
    var push: String = GlobalConst.api_public_cn
    var pushRouter: String = GlobalConst.push_router_public_cn
    var wss: String?
    var shortName: String = "default"
    var userCacheKey: String = "currentUser";
    var installationCacheKey: String = "currentInstallation"

    public init(appId: String, appKey: String, shortName: String? = "default", secure: Bool? = true) {
        self.appId = appId
        self.appKey = appKey
        let index = self.appId.index(self.appId.startIndex, offsetBy: 8)
        let appSubDomain = self.appId[...index]
        self.api = "\(appSubDomain).api.lncld.net"
        self.engine = "\(appSubDomain).engine.lncld.net"
        self.stats = "\(appSubDomain).stats.lncld.net"
        self.push = "\(appSubDomain).push.lncld.net"
        self.pushRouter = "\(appSubDomain).rtm.lncld.net"
    }

    public func getHeaders() -> Dictionary<String, String> {
        var headers: Dictionary<String, String> = [:]
        headers["X-LC-Id"] = self.appId
        headers["X-LC-Key"] = self.appKey
        headers["Content-Type"] = "application/json"
        return headers
    }

    public func getUrl(relativeUrl: String) -> String {
        if relativeUrl.hasPrefix("/push") {
            return "\(schema)\(push)\(apiVersion)\(relativeUrl)"
        }
        return "\(schema)\(api)\(apiVersion)\(relativeUrl)"
    }

    public func getPushRouterUrl() -> String {
        return "https://\(self.pushRouter)/v1/route?appId=\(self.appId)&secure=1"
    }
}
