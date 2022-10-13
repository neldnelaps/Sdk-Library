//
// ChequeGoodsSortType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип сортировки товаров при покупке. */
public enum ChequeGoodsSortType: String, Codable, CaseIterable {
    case positionAscending = "PositionAscending"
    case positionDescending = "PositionDescending"
    case priceAscending = "PriceAscending"
    case priceDescending = "PriceDescending"
}
