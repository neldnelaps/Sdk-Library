//
// CommunicationOfferType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип акции. */
public enum CommunicationOfferType: String, Codable, CaseIterable {
    case original = "Original"
    case personalGoods = "PersonalGoods"
    case personalOffer = "PersonalOffer"
    case all = "All"
}
