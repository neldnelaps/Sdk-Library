//
// SubscriptionNotificationStateModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Состояния метода оповещения. */
public struct SubscriptionNotificationStateModel: Codable, JSONEncodable, Hashable {

    /** Доступность для изменения (true-доступна для изменения, false-недоступна для изменения). */
    public var readOnly: Bool?
    /** Подключен ли тип подписки клиенту (true-подключен, false-не подключен). */
    public var selected: Bool?

    public init(readOnly: Bool? = nil, selected: Bool? = nil) {
        self.readOnly = readOnly
        self.selected = selected
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case readOnly
        case selected
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(readOnly, forKey: .readOnly)
        try container.encodeIfPresent(selected, forKey: .selected)
    }
}
