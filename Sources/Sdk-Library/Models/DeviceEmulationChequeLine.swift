//
// DeviceEmulationChequeLine.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeviceEmulationChequeLine: Codable, JSONEncodable, Hashable {

    public var goodsName: String?
    public var goodsItemId: String?
    public var posId: Int?
    public var amount: Double?
    public var discount: Double?
    public var cashback: Double?
    public var quantity: Double?
    public var message: String?

    public init(goodsName: String? = nil, goodsItemId: String? = nil, posId: Int? = nil, amount: Double? = nil, discount: Double? = nil, cashback: Double? = nil, quantity: Double? = nil, message: String? = nil) {
        self.goodsName = goodsName
        self.goodsItemId = goodsItemId
        self.posId = posId
        self.amount = amount
        self.discount = discount
        self.cashback = cashback
        self.quantity = quantity
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case goodsName
        case goodsItemId
        case posId
        case amount
        case discount
        case cashback
        case quantity
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(goodsName, forKey: .goodsName)
        try container.encodeIfPresent(goodsItemId, forKey: .goodsItemId)
        try container.encodeIfPresent(posId, forKey: .posId)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(discount, forKey: .discount)
        try container.encodeIfPresent(cashback, forKey: .cashback)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(message, forKey: .message)
    }
}
