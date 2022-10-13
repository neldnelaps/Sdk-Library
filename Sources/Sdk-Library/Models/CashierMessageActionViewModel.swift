//
// CashierMessageActionViewModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** View модель действия сообщения кассиру. */
public struct CashierMessageActionViewModel: Codable, JSONEncodable, Hashable {

    /** Id действия. Если указан, редактируется действие, иначе создается новое. */
    public var actionId: Int?
    public var actionType: ActionTypeViewModel?
    /** Порядок действия. */
    public var order: Int?
    /** Текст сообщения. */
    public var message: String?

    public init(actionId: Int? = nil, actionType: ActionTypeViewModel? = nil, order: Int? = nil, message: String? = nil) {
        self.actionId = actionId
        self.actionType = actionType
        self.order = order
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case actionType
        case order
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(actionId, forKey: .actionId)
        try container.encodeIfPresent(actionType, forKey: .actionType)
        try container.encodeIfPresent(order, forKey: .order)
        try container.encodeIfPresent(message, forKey: .message)
    }
}
