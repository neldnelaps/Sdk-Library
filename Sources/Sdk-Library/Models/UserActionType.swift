//
// UserActionType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Вид действия. */
public enum UserActionType: String, Codable, CaseIterable {
    case acceptTenderOffer = "AcceptTenderOffer"
    case changePhone = "ChangePhone"
    case questions = "Questions"
    case attachCard = "AttachCard"
    case showMessage = "ShowMessage"
    case changeEmail = "ChangeEmail"
    case resetPassword = "ResetPassword"
    case deleteCard = "DeleteCard"
    case replaceCard = "ReplaceCard"
    case changePassword = "ChangePassword"
    case blockCard = "BlockCard"
    case unblockCard = "UnblockCard"
    case passwordRequired = "PasswordRequired"
    case assignCard = "AssignCard"
    case acceptSubscriptionsConfirm = "AcceptSubscriptionsConfirm"
}