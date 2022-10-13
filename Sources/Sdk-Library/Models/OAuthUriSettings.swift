//
// OAuthUriSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct OAuthUriSettings: Codable, JSONEncodable, Hashable {

    public var target: String?
    public var method: String?
    public var parameters: [HttpValue]?

    public init(target: String? = nil, method: String? = nil, parameters: [HttpValue]? = nil) {
        self.target = target
        self.method = method
        self.parameters = parameters
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case target
        case method
        case parameters
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(target, forKey: .target)
        try container.encodeIfPresent(method, forKey: .method)
        try container.encodeIfPresent(parameters, forKey: .parameters)
    }
}

