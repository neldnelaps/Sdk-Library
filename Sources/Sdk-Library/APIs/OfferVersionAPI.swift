//
// OfferVersionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OfferVersionAPI {

    /**
     Получает список всех версий акции.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter fromDate: (query) Дата С. (optional)
     - parameter toDate: (query) Дата По. (optional)
     - parameter from: (query) С какого элемента брать. (optional)
     - parameter count: (query) Сколько элементов брать. (optional)
     - parameter name: (query) Подстрока для поиска по имени. (optional)
     - parameter viewStates: (query) Список состояний акции для фильтрации. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func offerVersionGetList(offerId: Int, fromDate: String? = nil, toDate: String? = nil, from: Int? = nil, count: Int? = nil, name: String? = nil, viewStates: [OfferViewState]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfOfferVersionsViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return offerVersionGetListWithRequestBuilder(offerId: offerId, fromDate: fromDate, toDate: toDate, from: from, count: count, name: name, viewStates: viewStates).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получает список всех версий акции.
     - GET /v1.2/Offers/{offerId}/versions
     - parameter offerId: (path) Идентификатор акции. 
     - parameter fromDate: (query) Дата С. (optional)
     - parameter toDate: (query) Дата По. (optional)
     - parameter from: (query) С какого элемента брать. (optional)
     - parameter count: (query) Сколько элементов брать. (optional)
     - parameter name: (query) Подстрока для поиска по имени. (optional)
     - parameter viewStates: (query) Список состояний акции для фильтрации. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfOfferVersionsViewModel> 
     */
    open class func offerVersionGetListWithRequestBuilder(offerId: Int, fromDate: String? = nil, toDate: String? = nil, from: Int? = nil, count: Int? = nil, name: String? = nil, viewStates: [OfferViewState]? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfOfferVersionsViewModel> {
        var localVariablePath = "/v1.2/Offers/{offerId}/versions"
        let offerIdPreEscape = "\(APIHelper.mapValueToPathItem(offerId))"
        let offerIdPostEscape = offerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerId}", with: offerIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fromDate": fromDate?.encodeToJSON(),
            "toDate": toDate?.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "name": name?.encodeToJSON(),
            "viewStates": viewStates?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfOfferVersionsViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возобновить версию акции.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter versionId: (path) Идентификатор версии. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func offerVersionResumeVersion(offerId: Int, versionId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return offerVersionResumeVersionWithRequestBuilder(offerId: offerId, versionId: versionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возобновить версию акции.
     - POST /v1.2/Offers/{offerId}/versions/{versionId}/resume
     - parameter offerId: (path) Идентификатор акции. 
     - parameter versionId: (path) Идентификатор версии. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func offerVersionResumeVersionWithRequestBuilder(offerId: Int, versionId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/Offers/{offerId}/versions/{versionId}/resume"
        let offerIdPreEscape = "\(APIHelper.mapValueToPathItem(offerId))"
        let offerIdPostEscape = offerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerId}", with: offerIdPostEscape, options: .literal, range: nil)
        let versionIdPreEscape = "\(APIHelper.mapValueToPathItem(versionId))"
        let versionIdPostEscape = versionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versionId}", with: versionIdPostEscape, options: .literal, range: nil)
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
     Останавливает версию акции.
     
     - parameter offerId: (path) Идентификатор акции. 
     - parameter versionId: (path) Идентификатор версии. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func offerVersionStopVersion(offerId: Int, versionId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return offerVersionStopVersionWithRequestBuilder(offerId: offerId, versionId: versionId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Останавливает версию акции.
     - POST /v1.2/Offers/{offerId}/versions/{versionId}/stop
     - parameter offerId: (path) Идентификатор акции. 
     - parameter versionId: (path) Идентификатор версии. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func offerVersionStopVersionWithRequestBuilder(offerId: Int, versionId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/Offers/{offerId}/versions/{versionId}/stop"
        let offerIdPreEscape = "\(APIHelper.mapValueToPathItem(offerId))"
        let offerIdPostEscape = offerIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{offerId}", with: offerIdPostEscape, options: .literal, range: nil)
        let versionIdPreEscape = "\(APIHelper.mapValueToPathItem(versionId))"
        let versionIdPostEscape = versionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{versionId}", with: versionIdPostEscape, options: .literal, range: nil)
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
}