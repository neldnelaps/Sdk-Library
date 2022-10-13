//
// SystemApiSubscriptionTypeViewModelAnyOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SystemApiSubscriptionTypeViewModelAnyOf: Codable, JSONEncodable, Hashable {

    /** Тип подписки скрыт в шаблонах. */
    public var hiddenTemplate: Bool?

    public init(hiddenTemplate: Bool? = nil) {
        self.hiddenTemplate = hiddenTemplate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hiddenTemplate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(hiddenTemplate, forKey: .hiddenTemplate)
    }
}
