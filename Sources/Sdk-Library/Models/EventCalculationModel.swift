//
// EventCalculationModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Фильтр для списка счетов кассы. */
public struct EventCalculationModel: Codable, JSONEncodable, Hashable {

    /** Идентификатор. */
    public var id: Int64?
    public var calculationType: OfferCalculationType?
    public var offerEventType: OfferEventType?
    /** Время расчёта. */
    public var calculationDuration: Double?
    /** Акции на расчёт. */
    public var offers: [CalculationOfferModel]?
    /** Позиции чека. */
    public var positionsModel: [ChequePositionViewModel]?
    /** Расчёты событий в рамках одной активности. */
    public var relatedEventCalculations: [EventCalculationModel]?
    public var businessEvent: BusinessActivityViewModel?

    public init(id: Int64? = nil, calculationType: OfferCalculationType? = nil, offerEventType: OfferEventType? = nil, calculationDuration: Double? = nil, offers: [CalculationOfferModel]? = nil, positionsModel: [ChequePositionViewModel]? = nil, relatedEventCalculations: [EventCalculationModel]? = nil, businessEvent: BusinessActivityViewModel? = nil) {
        self.id = id
        self.calculationType = calculationType
        self.offerEventType = offerEventType
        self.calculationDuration = calculationDuration
        self.offers = offers
        self.positionsModel = positionsModel
        self.relatedEventCalculations = relatedEventCalculations
        self.businessEvent = businessEvent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case calculationType
        case offerEventType
        case calculationDuration
        case offers
        case positionsModel
        case relatedEventCalculations
        case businessEvent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(calculationType, forKey: .calculationType)
        try container.encodeIfPresent(offerEventType, forKey: .offerEventType)
        try container.encodeIfPresent(calculationDuration, forKey: .calculationDuration)
        try container.encodeIfPresent(offers, forKey: .offers)
        try container.encodeIfPresent(positionsModel, forKey: .positionsModel)
        try container.encodeIfPresent(relatedEventCalculations, forKey: .relatedEventCalculations)
        try container.encodeIfPresent(businessEvent, forKey: .businessEvent)
    }
}

