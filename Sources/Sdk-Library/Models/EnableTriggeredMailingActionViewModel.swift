//
// EnableTriggeredMailingActionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель для действия \&quot;Включить оповещение\&quot;. */
public struct EnableTriggeredMailingActionViewModel: Codable, JSONEncodable, Hashable {

    /** Id действия. Если указан, редактируется действие, иначе создается новое. */
    public var actionId: Int?
    public var actionType: ActionTypeViewModel?
    /** Порядок действия. */
    public var order: Int?
    /** Идентификатор рассылки. */
    public var mailingId: Int?
    /** Название рассылки. */
    public var mailingName: String?

    public init(actionId: Int? = nil, actionType: ActionTypeViewModel? = nil, order: Int? = nil, mailingId: Int? = nil, mailingName: String? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.order = order
        self.mailingId = mailingId
        self.mailingName = mailingName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case actionType
        case order
        case mailingId
        case mailingName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(mailingId, forKey: .mailingId)
        try container.encodeIfPresent(mailingName, forKey: .mailingName)
    }
}

