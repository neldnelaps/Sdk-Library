//
// UserAttributesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class UserAttributesAPI {

    /**
     Возвращает значение общего атрибута.
     
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userAttributesGetCommonAttributeValue(logicalName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCommonAttributeJsonModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userAttributesGetCommonAttributeValueWithRequestBuilder(logicalName: logicalName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает значение общего атрибута.
     - GET /v1.2/User/Attributes/Common/Values/{logicalName}
     - parameter logicalName: (path) Логическое имя атрибута. 
     - returns: RequestBuilder<ResultModelOfCommonAttributeJsonModel> 
     */
    open class func userAttributesGetCommonAttributeValueWithRequestBuilder(logicalName: String) -> RequestBuilder<ResultModelOfCommonAttributeJsonModel> {
        var localVariablePath = "/v1.2/User/Attributes/Common/Values/{logicalName}"
        let logicalNamePreEscape = "\(APIHelper.mapValueToPathItem(logicalName))"
        let logicalNamePostEscape = logicalNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{logicalName}", with: logicalNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCommonAttributeJsonModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список объектов из коллекции по xPath.
     
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter xPath: (query) Xpath. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userAttributesGetObjects(logicalName: String, xPath: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return userAttributesGetObjectsWithRequestBuilder(logicalName: logicalName, xPath: xPath).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список объектов из коллекции по xPath.
     - GET /v1.2/User/Attributes/PersonalOffer/Values/{logicalName}
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter xPath: (query) Xpath. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func userAttributesGetObjectsWithRequestBuilder(logicalName: String, xPath: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/v1.2/User/Attributes/PersonalOffer/Values/{logicalName}"
        let logicalNamePreEscape = "\(APIHelper.mapValueToPathItem(logicalName))"
        let logicalNamePostEscape = logicalNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{logicalName}", with: logicalNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "xPath": xPath.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить значения атрибутов \"Персональные товары\" для пользователя.
     
     - parameter modelAttributesIds: (query) Список идентификаторов атрибутов. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userAttributesGetPersonalOfferAttributes(modelAttributesIds: [Int]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfPersonalOfferAttributeValueModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userAttributesGetPersonalOfferAttributesWithRequestBuilder(modelAttributesIds: modelAttributesIds).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить значения атрибутов \"Персональные товары\" для пользователя.
     - GET /v1.2/User/Attributes/PersonalOffer/Values
     - parameter modelAttributesIds: (query) Список идентификаторов атрибутов. (optional)
     - returns: RequestBuilder<ResultModelOfListOfPersonalOfferAttributeValueModel> 
     */
    open class func userAttributesGetPersonalOfferAttributesWithRequestBuilder(modelAttributesIds: [Int]? = nil) -> RequestBuilder<ResultModelOfListOfPersonalOfferAttributeValueModel> {
        let localVariablePath = "/v1.2/User/Attributes/PersonalOffer/Values"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "model.attributesIds": modelAttributesIds?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfPersonalOfferAttributeValueModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Функция возвращает список наборов любимых товаров.
     
     - parameter fromDate: (query) Дата начала интервала. 
     - parameter toDate: (query) Дата окончания интервала. 
     - parameter from: (query) С какого номера. (optional)
     - parameter count: (query) Сколько записей вернуть. (optional)
     - parameter periodType: (query) Только наборы строящиеся на истории покупок. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userAttributesGetPersonalOfferSets(fromDate: String, toDate: String, from: Int? = nil, count: Int? = nil, periodType: TimePeriodType? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userAttributesGetPersonalOfferSetsWithRequestBuilder(fromDate: fromDate, toDate: toDate, from: from, count: count, periodType: periodType).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Функция возвращает список наборов любимых товаров.
     - GET /v1.2/User/Attributes/PersonalOffer/list
     - parameter fromDate: (query) Дата начала интервала. 
     - parameter toDate: (query) Дата окончания интервала. 
     - parameter from: (query) С какого номера. (optional)
     - parameter count: (query) Сколько записей вернуть. (optional)
     - parameter periodType: (query) Только наборы строящиеся на истории покупок. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel> 
     */
    open class func userAttributesGetPersonalOfferSetsWithRequestBuilder(fromDate: String, toDate: String, from: Int? = nil, count: Int? = nil, periodType: TimePeriodType? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel> {
        let localVariablePath = "/v1.2/User/Attributes/PersonalOffer/list"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fromDate": fromDate.encodeToJSON(),
            "toDate": toDate.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "periodType": periodType?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает значение ПП.
     
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userAttributesGetValue(logicalName: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AnyCodable?, _ error: Error?) -> Void)) -> RequestTask {
        return userAttributesGetValueWithRequestBuilder(logicalName: logicalName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает значение ПП.
     - GET /v1.2/User/Attributes/PersonalOffer/Values/Raw/{logicalName}
     - parameter logicalName: (path) Логическое имя атрибута. 
     - returns: RequestBuilder<AnyCodable> 
     */
    open class func userAttributesGetValueWithRequestBuilder(logicalName: String) -> RequestBuilder<AnyCodable> {
        var localVariablePath = "/v1.2/User/Attributes/PersonalOffer/Values/Raw/{logicalName}"
        let logicalNamePreEscape = "\(APIHelper.mapValueToPathItem(logicalName))"
        let logicalNamePostEscape = logicalNamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{logicalName}", with: logicalNamePostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AnyCodable>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Задать значение атрибута \"Персональные товары\" для пользователя.
     
     - parameter attributeId: (path) Идентификатор атрибута. 
     - parameter model: (query) Модель со списком выбранных товаров. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func userAttributesSetPersonalOfferAttribute(attributeId: Int, model: PersonalOfferAttributeValueModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return userAttributesSetPersonalOfferAttributeWithRequestBuilder(attributeId: attributeId, model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Задать значение атрибута \"Персональные товары\" для пользователя.
     - POST /v1.2/User/Attributes/PersonalOffer/Values/{attributeId}
     - parameter attributeId: (path) Идентификатор атрибута. 
     - parameter model: (query) Модель со списком выбранных товаров. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func userAttributesSetPersonalOfferAttributeWithRequestBuilder(attributeId: Int, model: PersonalOfferAttributeValueModel) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/User/Attributes/PersonalOffer/Values/{attributeId}"
        let attributeIdPreEscape = "\(APIHelper.mapValueToPathItem(attributeId))"
        let attributeIdPostEscape = attributeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{attributeId}", with: attributeIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "model": model.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
