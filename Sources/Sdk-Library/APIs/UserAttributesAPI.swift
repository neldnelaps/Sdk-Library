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
     Возвращает значение общего атрибута клиента.
     
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
     Возвращает значение общего атрибута клиента.
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
     Возвращает список атрибутов из коллекции по JSONPath.
     
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter xPath: (query) JSONPath. 
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
     Возвращает список атрибутов из коллекции по JSONPath.
     - GET /v1.2/User/Attributes/PersonalOffer/Values/{logicalName}
     - parameter logicalName: (path) Логическое имя атрибута. 
     - parameter xPath: (query) JSONPath. 
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
     Возвращает значения атрибутов \"Персональные товары\" для клиента.
     
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
     Возвращает значения атрибутов \"Персональные товары\" для клиента.
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
     Возвращает список наборов персональных товаров.
     
     - parameter fromDate: (query) Начальная дата периода в формате 0000-00-00T00:00:00Z. 
     - parameter toDate: (query) Конечная дата периода в формате 0000-00-00T00:00:00Z. 
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter periodType: (query) Фильтр отображения наборов, сформированных по истории покупок. (optional)
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
     Возвращает список наборов персональных товаров.
     - GET /v1.2/User/Attributes/PersonalOffer/list
     - parameter fromDate: (query) Начальная дата периода в формате 0000-00-00T00:00:00Z. 
     - parameter toDate: (query) Конечная дата периода в формате 0000-00-00T00:00:00Z. 
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter periodType: (query) Фильтр отображения наборов, сформированных по истории покупок. (optional)
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
     Возвращает значение Персонального предложения.
     
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
     Возвращает значение Персонального предложения.
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
     Обновляет значение атрибута \"Персональные товары\" для клиента.
     
     - parameter attributeId: (path) Внутренний идентификатор атрибута. 
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
     Обновляет значение атрибута \"Персональные товары\" для клиента.
     - POST /v1.2/User/Attributes/PersonalOffer/Values/{attributeId}
     - parameter attributeId: (path) Внутренний идентификатор атрибута. 
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
