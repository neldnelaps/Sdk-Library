//
// PartnerDiscountType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип скидки (прямая или отложенная). */
public enum PartnerDiscountType: String, Codable, CaseIterable {
    case discount = "Discount"
    case cashback = "Cashback"
}
