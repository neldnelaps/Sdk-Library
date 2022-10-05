//
// ClientApiSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ClientApiSettings: Codable, JSONEncodable, Hashable {

    public var uri: String?
    public var applicationKey: String?

    public init(uri: String? = nil, applicationKey: String? = nil) {
        self.uri = uri
        self.applicationKey = applicationKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uri
        case applicationKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uri, forKey: .uri)
        try container.encodeIfPresent(applicationKey, forKey: .applicationKey)
    }
}
