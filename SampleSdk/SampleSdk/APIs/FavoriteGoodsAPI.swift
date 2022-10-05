//
// FavoriteGoodsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class FavoriteGoodsAPI {

    /**
     Возвращает набор любимых товаров.
     
     - parameter id: (path) Внутренний идентификатор набора любимых товаров. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func favoriteGoodsGetFavoriteGoods(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfFavoriteGoodsCommonViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return favoriteGoodsGetFavoriteGoodsWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает набор любимых товаров.
     - GET /v1.2/user/favoriteGoods/{id}
     - parameter id: (path) Внутренний идентификатор набора любимых товаров. 
     - returns: RequestBuilder<ResultModelOfFavoriteGoodsCommonViewModel> 
     */
    open class func favoriteGoodsGetFavoriteGoodsWithRequestBuilder(id: Int) -> RequestBuilder<ResultModelOfFavoriteGoodsCommonViewModel> {
        var localVariablePath = "/v1.2/user/favoriteGoods/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfFavoriteGoodsCommonViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список наборов любимых товаров.
     
     - parameter fromDate: (query) Начальная дата периода выборки в формате 0000-00-00T00:00:00Z. 
     - parameter toDate: (query) Конечная дата периода выборки в формате 0000-00-00T00:00:00Z. 
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func favoriteGoodsGetFavoriteGoodsList(fromDate: String, toDate: String, from: Int? = nil, count: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return favoriteGoodsGetFavoriteGoodsListWithRequestBuilder(fromDate: fromDate, toDate: toDate, from: from, count: count).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список наборов любимых товаров.
     - GET /v1.2/user/favoriteGoods
     - parameter fromDate: (query) Начальная дата периода выборки в формате 0000-00-00T00:00:00Z. 
     - parameter toDate: (query) Конечная дата периода выборки в формате 0000-00-00T00:00:00Z. 
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel> 
     */
    open class func favoriteGoodsGetFavoriteGoodsListWithRequestBuilder(fromDate: String, toDate: String, from: Int? = nil, count: Int? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel> {
        let localVariablePath = "/v1.2/user/favoriteGoods"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fromDate": fromDate.encodeToJSON(),
            "toDate": toDate.encodeToJSON(),
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfFavoriteGoodsCommonViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список любимых товаров из истории покупок.
     
     - parameter id: (path) Внутренний идентификатор любимого товара. 
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter name: (query) Название товара. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func favoriteGoodsGetGoods(id: Int, from: Int? = nil, count: Int? = nil, name: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfGoodsCatalogLeafViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return favoriteGoodsGetGoodsWithRequestBuilder(id: id, from: from, count: count, name: name).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список любимых товаров из истории покупок.
     - GET /v1.2/user/favoriteGoods/{id}/list
     - parameter id: (path) Внутренний идентификатор любимого товара. 
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter name: (query) Название товара. (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfGoodsCatalogLeafViewModel> 
     */
    open class func favoriteGoodsGetGoodsWithRequestBuilder(id: Int, from: Int? = nil, count: Int? = nil, name: String? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfGoodsCatalogLeafViewModel> {
        var localVariablePath = "/v1.2/user/favoriteGoods/{id}/list"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "name": name?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfGoodsCatalogLeafViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
