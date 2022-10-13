//
// PurchaseOperationType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Тип операции покупки. */
public enum PurchaseOperationType: String, Codable, CaseIterable {
    case unknown = "Unknown"
    case payment = "Payment"
    case deposit = "Deposit"
    case cashback = "Cashback"
    case refund = "Refund"
    case directDiscount = "DirectDiscount"
    case confirmPurchase = "ConfirmPurchase"
    case giftCardPayment = "GiftCardPayment"
    case cancelPurchase = "CancelPurchase"
    case giftCertificatePayment = "GiftCertificatePayment"
    case confirmRefundPurchase = "ConfirmRefundPurchase"
}
