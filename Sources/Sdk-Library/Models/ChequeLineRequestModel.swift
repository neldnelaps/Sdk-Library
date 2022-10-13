//
// ChequeLineRequestModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Модель с информацией о чековой позиции. */
public struct ChequeLineRequestModel: Codable, JSONEncodable, Hashable {

    /** Уникальный номер позиции в чеке. */
    public var position: Int?
    /** Сумма позиции после применения внешней/кассовой скидки. */
    public var amount: Double?
    /** Код товара по каталогу Партнера. */
    public var goodsId: String?
    /** Штрихкод товара. */
    public var barcode: String?
    /** Количество товара/вес. */
    public var quantity: Double?
    /** Сумма кешбэка на позицию. */
    public var cashback: Double?
    /** Размер прямой скидки, предоставляемой по карте. */
    public var discount: Double?
    /** Список сработавших акций. */
    public var appliedOffers: [OfferResponseModel]?
    /** Название товара. */
    public var name: String?
    /** Цена единицы товара по номенклатуре (без скидок). */
    public var price: Double?
    /** Величина суммы корректировки рассчитанной кассой перед оплатой чека (используется при начислении бонусов). */
    public var correction: Double?
    public var params: ParamsRequestModel?

    public init(position: Int? = nil, amount: Double? = nil, goodsId: String? = nil, barcode: String? = nil, quantity: Double? = nil, cashback: Double? = nil, discount: Double? = nil, appliedOffers: [OfferResponseModel]? = nil, name: String? = nil, price: Double? = nil, correction: Double? = nil, params: ParamsRequestModel? = nil) {
        self.position = position
        self.amount = amount
        self.goodsId = goodsId
        self.barcode = barcode
        self.quantity = quantity
        self.cashback = cashback
        self.discount = discount
        self.appliedOffers = appliedOffers
        self.name = name
        self.price = price
        self.correction = correction
        self.params = params
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case position
        case amount
        case goodsId
        case barcode
        case quantity
        case cashback
        case discount
        case appliedOffers
        case name
        case price
        case correction
        case params
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(position, forKey: .position)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(goodsId, forKey: .goodsId)
        try container.encodeIfPresent(barcode, forKey: .barcode)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(cashback, forKey: .cashback)
        try container.encodeIfPresent(discount, forKey: .discount)
        try container.encodeIfPresent(appliedOffers, forKey: .appliedOffers)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(correction, forKey: .correction)
        try container.encodeIfPresent(params, forKey: .params)
    }
}

