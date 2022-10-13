//
// PositionDiscountType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип скидки. */
public enum PositionDiscountType: String, Codable, CaseIterable {
    case calculatedCashback = "CalculatedCashback"
    case calculatedDiscount = "CalculatedDiscount"
    case partnerDiscount = "PartnerDiscount"
    case partnerCashback = "PartnerCashback"
    case positionCharge = "PositionCharge"
    case calculatedPayment = "CalculatedPayment"
    case calculatedGiftCardPayment = "CalculatedGiftCardPayment"
    case calculatedGiftCertificatePayment = "CalculatedGiftCertificatePayment"
}
