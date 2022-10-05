//
// CardAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CardAPI {

    /**
     Отменяет начатое действие по присоединению карты.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardAttachCardCancel(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardAttachCardCancelWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Отменяет начатое действие по присоединению карты.
     - POST /v1.2/Cards/Attach/Cancel
     - returns: RequestBuilder<ResultModel> 
     */
    open class func cardAttachCardCancelWithRequestBuilder() -> RequestBuilder<ResultModel> {
        let localVariablePath = "/v1.2/Cards/Attach/Cancel"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Завершает начатое действие по присоединению карты.
     
     - parameter confirmCode: (query) Код подтверждения. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardAttachCardConfirm(confirmCode: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardAttachCardConfirmWithRequestBuilder(confirmCode: confirmCode).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Завершает начатое действие по присоединению карты.
     - POST /v1.2/Cards/Attach/Confirm
     - parameter confirmCode: (query) Код подтверждения. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func cardAttachCardConfirmWithRequestBuilder(confirmCode: String) -> RequestBuilder<ResultModel> {
        let localVariablePath = "/v1.2/Cards/Attach/Confirm"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "confirmCode": confirmCode.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Процесс \"объединение карт\": повторная отправка кода подтверждения.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardAttachCardSendConfirmCode(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardAttachCardSendConfirmCodeWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Процесс \"объединение карт\": повторная отправка кода подтверждения.
     - POST /v1.2/Cards/Attach/SendConfirmCode
     - returns: RequestBuilder<ResultModel> 
     */
    open class func cardAttachCardSendConfirmCodeWithRequestBuilder() -> RequestBuilder<ResultModel> {
        let localVariablePath = "/v1.2/Cards/Attach/SendConfirmCode"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает текущее состояние процесса присоединения карты.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardAttachCardState(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfAttachCardState?, _ error: Error?) -> Void)) -> RequestTask {
        return cardAttachCardStateWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает текущее состояние процесса присоединения карты.
     - GET /v1.2/Cards/Attach
     - returns: RequestBuilder<ResultModelOfAttachCardState> 
     */
    open class func cardAttachCardStateWithRequestBuilder() -> RequestBuilder<ResultModelOfAttachCardState> {
        let localVariablePath = "/v1.2/Cards/Attach"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfAttachCardState>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Блокировка/разблокировка карты.
     
     - parameter cardId: (path) Идентификатор карты. 
     - parameter password: (query) Пароль (пароль еще раз требуется для дополнительной проверки). 
     - parameter reason: (query) Причины блокировки. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardChangeBlockState(cardId: Int, password: String, reason: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardChangeBlockStateWithRequestBuilder(cardId: cardId, password: password, reason: reason).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Блокировка/разблокировка карты.
     - POST /v1.2/Cards/{cardId}/ChangeBlockState
     - В случае успешного завершения вызова, карта меняет значение флага \"Заблокирована для оплаты\" с текущего на противоположное.
     - parameter cardId: (path) Идентификатор карты. 
     - parameter password: (query) Пароль (пароль еще раз требуется для дополнительной проверки). 
     - parameter reason: (query) Причины блокировки. (optional)
     - returns: RequestBuilder<ResultModel> 
     */
    open class func cardChangeBlockStateWithRequestBuilder(cardId: Int, password: String, reason: String? = nil) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/Cards/{cardId}/ChangeBlockState"
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cardId}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "password": password.encodeToJSON(),
            "reason": reason?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить информацию о возможности выпуска виртуальной карты.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardEmitVirtualCardInfo(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfEmitVirtualCardInfoModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardEmitVirtualCardInfoWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить информацию о возможности выпуска виртуальной карты.
     - GET /v1.2/Cards/EmitVirtual
     - returns: RequestBuilder<ResultModelOfEmitVirtualCardInfoModel> 
     */
    open class func cardEmitVirtualCardInfoWithRequestBuilder() -> RequestBuilder<ResultModelOfEmitVirtualCardInfoModel> {
        let localVariablePath = "/v1.2/Cards/EmitVirtual"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfEmitVirtualCardInfoModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получение карты по идентификатору.
     
     - parameter cardId: (path) Идентификатор карты. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardGetCard(cardId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCardInfo?, _ error: Error?) -> Void)) -> RequestTask {
        return cardGetCardWithRequestBuilder(cardId: cardId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получение карты по идентификатору.
     - GET /v1.2/Cards/{cardId}
     - parameter cardId: (path) Идентификатор карты. 
     - returns: RequestBuilder<ResultModelOfCardInfo> 
     */
    open class func cardGetCardWithRequestBuilder(cardId: Int) -> RequestBuilder<ResultModelOfCardInfo> {
        var localVariablePath = "/v1.2/Cards/{cardId}"
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cardId}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCardInfo>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получение карт текущего пользователя.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardGetCards(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfCardInfo?, _ error: Error?) -> Void)) -> RequestTask {
        return cardGetCardsWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получение карт текущего пользователя.
     - GET /v1.2/Cards
     - returns: RequestBuilder<ResultModelOfListOfCardInfo> 
     */
    open class func cardGetCardsWithRequestBuilder() -> RequestBuilder<ResultModelOfListOfCardInfo> {
        let localVariablePath = "/v1.2/Cards"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfCardInfo>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Генерирует Qr код для карты.
     
     - parameter cardId: (path) Идентификатор карты. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardGetQrCode(cardId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfQrCodeModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardGetQrCodeWithRequestBuilder(cardId: cardId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Генерирует Qr код для карты.
     - GET /v1.2/Cards/{cardId}/QrCode
     - parameter cardId: (path) Идентификатор карты. 
     - returns: RequestBuilder<ResultModelOfQrCodeModel> 
     */
    open class func cardGetQrCodeWithRequestBuilder(cardId: Int) -> RequestBuilder<ResultModelOfQrCodeModel> {
        var localVariablePath = "/v1.2/Cards/{cardId}/QrCode"
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cardId}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfQrCodeModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Начинает действие по замене карт.
     
     - parameter cardId: (path) Идентификатор заменяемой карты. 
     - parameter replaceCardModel: (query) ViewModel входных параметров замены карты. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardReplaceCard(cardId: Int, replaceCardModel: ReplaceCardModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfReplaceCardResult?, _ error: Error?) -> Void)) -> RequestTask {
        return cardReplaceCardWithRequestBuilder(cardId: cardId, replaceCardModel: replaceCardModel).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Начинает действие по замене карт.
     - POST /v1.2/Cards/{cardId}/Replace
     - parameter cardId: (path) Идентификатор заменяемой карты. 
     - parameter replaceCardModel: (query) ViewModel входных параметров замены карты. 
     - returns: RequestBuilder<ResultModelOfReplaceCardResult> 
     */
    open class func cardReplaceCardWithRequestBuilder(cardId: Int, replaceCardModel: ReplaceCardModel) -> RequestBuilder<ResultModelOfReplaceCardResult> {
        var localVariablePath = "/v1.2/Cards/{cardId}/Replace"
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{cardId}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "replaceCardModel": replaceCardModel.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfReplaceCardResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить информацию о возможности прикрепления физической карты.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardSetCardInfo(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfSetCardActionInfoModel?, _ error: Error?) -> Void)) -> RequestTask {
        return cardSetCardInfoWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить информацию о возможности прикрепления физической карты.
     - GET /v1.2/Cards/Set
     - returns: RequestBuilder<ResultModelOfSetCardActionInfoModel> 
     */
    open class func cardSetCardInfoWithRequestBuilder() -> RequestBuilder<ResultModelOfSetCardActionInfoModel> {
        let localVariablePath = "/v1.2/Cards/Set"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfSetCardActionInfoModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}