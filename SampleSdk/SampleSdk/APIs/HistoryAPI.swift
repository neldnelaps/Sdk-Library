//
// HistoryAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class HistoryAPI {

    /**
     Получить список товаров в указанный период времени.
     
     - parameter fromDate: (query) Начало периода. 
     - parameter toDate: (query) Конец периода. 
     - parameter brandUid: (query) Внешний идентификатор бренда. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func historyGetGoodsIds(fromDate: String, toDate: String, brandUid: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfString?, _ error: Error?) -> Void)) -> RequestTask {
        return historyGetGoodsIdsWithRequestBuilder(fromDate: fromDate, toDate: toDate, brandUid: brandUid).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить список товаров в указанный период времени.
     - GET /v1.2/History/GoodsIds
     - parameter fromDate: (query) Начало периода. 
     - parameter toDate: (query) Конец периода. 
     - parameter brandUid: (query) Внешний идентификатор бренда. (optional)
     - returns: RequestBuilder<ResultModelOfListOfString> 
     */
    open class func historyGetGoodsIdsWithRequestBuilder(fromDate: String, toDate: String, brandUid: String? = nil) -> RequestBuilder<ResultModelOfListOfString> {
        let localVariablePath = "/v1.2/History/GoodsIds"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "fromDate": fromDate.encodeToJSON(),
            "toDate": toDate.encodeToJSON(),
            "brandUid": brandUid?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfString>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить историю.
     
     - parameter filterFromDate: (query) Дата с которой необходимо вывести историю. (optional)
     - parameter filterToDate: (query) Дата до которой необходимо вывести историю. (optional)
     - parameter filterCardId: (query) ID карты. Если указан, то будет получена история только по этой карте. (optional)
     - parameter filterFrom: (query) Начиная с какого элемента необходимо выводить. (optional)
     - parameter filterCount: (query) Кол-во элементов для вывода. (optional)
     - parameter filterHistoryItemType: (query) Тип события в истории {Loymax.Mobile.Contract.Models.History.HistoryFilter.HistoryItemType}. (optional)
     - parameter filterChequeNumber: (query) Номер чека. (optional)
     - parameter filterOperationTypes: (query) Типы операций. (optional)
     - parameter filterCurrentUser: (query) По текущему пользователю, или по группе пользователя. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func historyGetHistory(filterFromDate: String? = nil, filterToDate: String? = nil, filterCardId: Int? = nil, filterFrom: Int? = nil, filterCount: Int? = nil, filterHistoryItemType: HistoryItemType? = nil, filterChequeNumber: String? = nil, filterOperationTypes: [HistoryItemOperationType]? = nil, filterCurrentUser: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfHistoryListModel?, _ error: Error?) -> Void)) -> RequestTask {
        return historyGetHistoryWithRequestBuilder(filterFromDate: filterFromDate, filterToDate: filterToDate, filterCardId: filterCardId, filterFrom: filterFrom, filterCount: filterCount, filterHistoryItemType: filterHistoryItemType, filterChequeNumber: filterChequeNumber, filterOperationTypes: filterOperationTypes, filterCurrentUser: filterCurrentUser).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить историю.
     - GET /v1.2/History
     - parameter filterFromDate: (query) Дата с которой необходимо вывести историю. (optional)
     - parameter filterToDate: (query) Дата до которой необходимо вывести историю. (optional)
     - parameter filterCardId: (query) ID карты. Если указан, то будет получена история только по этой карте. (optional)
     - parameter filterFrom: (query) Начиная с какого элемента необходимо выводить. (optional)
     - parameter filterCount: (query) Кол-во элементов для вывода. (optional)
     - parameter filterHistoryItemType: (query) Тип события в истории {Loymax.Mobile.Contract.Models.History.HistoryFilter.HistoryItemType}. (optional)
     - parameter filterChequeNumber: (query) Номер чека. (optional)
     - parameter filterOperationTypes: (query) Типы операций. (optional)
     - parameter filterCurrentUser: (query) По текущему пользователю, или по группе пользователя. (optional)
     - returns: RequestBuilder<ResultModelOfHistoryListModel> 
     */
    open class func historyGetHistoryWithRequestBuilder(filterFromDate: String? = nil, filterToDate: String? = nil, filterCardId: Int? = nil, filterFrom: Int? = nil, filterCount: Int? = nil, filterHistoryItemType: HistoryItemType? = nil, filterChequeNumber: String? = nil, filterOperationTypes: [HistoryItemOperationType]? = nil, filterCurrentUser: Bool? = nil) -> RequestBuilder<ResultModelOfHistoryListModel> {
        let localVariablePath = "/v1.2/History"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.fromDate": filterFromDate?.encodeToJSON(),
            "filter.toDate": filterToDate?.encodeToJSON(),
            "filter.cardId": filterCardId?.encodeToJSON(),
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.historyItemType": filterHistoryItemType?.encodeToJSON(),
            "filter.chequeNumber": filterChequeNumber?.encodeToJSON(),
            "filter.operationTypes": filterOperationTypes?.encodeToJSON(),
            "filter.currentUser": filterCurrentUser?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfHistoryListModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить сумму покупок, сумму начисленных и списанных бонусов в рамках покупок.
     
     - parameter filterFromDate: (query) Дата с которой необходимо вывести историю. (optional)
     - parameter filterToDate: (query) Дата до которой необходимо вывести историю. (optional)
     - parameter filterCardId: (query) ID карты. Если указан, то будет получена история только по этой карте. (optional)
     - parameter filterHistoryItemType: (query) Тип события в истории {Loymax.Mobile.Contract.Models.History.AggregateHistoryFilter.HistoryItemType}. (optional)
     - parameter filterCurrentUser: (query) По текущему пользователю, или по группе пользователя. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func historyGetHistoryAggregateWithdrawRewardPurchase(filterFromDate: String? = nil, filterToDate: String? = nil, filterCardId: Int? = nil, filterHistoryItemType: HistoryItemType? = nil, filterCurrentUser: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfHistoryAggregateWithdrawRewardModel?, _ error: Error?) -> Void)) -> RequestTask {
        return historyGetHistoryAggregateWithdrawRewardPurchaseWithRequestBuilder(filterFromDate: filterFromDate, filterToDate: filterToDate, filterCardId: filterCardId, filterHistoryItemType: filterHistoryItemType, filterCurrentUser: filterCurrentUser).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить сумму покупок, сумму начисленных и списанных бонусов в рамках покупок.
     - GET /v1.2/History/AggregateWithdrawRewardPurchase
     - parameter filterFromDate: (query) Дата с которой необходимо вывести историю. (optional)
     - parameter filterToDate: (query) Дата до которой необходимо вывести историю. (optional)
     - parameter filterCardId: (query) ID карты. Если указан, то будет получена история только по этой карте. (optional)
     - parameter filterHistoryItemType: (query) Тип события в истории {Loymax.Mobile.Contract.Models.History.AggregateHistoryFilter.HistoryItemType}. (optional)
     - parameter filterCurrentUser: (query) По текущему пользователю, или по группе пользователя. (optional)
     - returns: RequestBuilder<ResultModelOfHistoryAggregateWithdrawRewardModel> 
     */
    open class func historyGetHistoryAggregateWithdrawRewardPurchaseWithRequestBuilder(filterFromDate: String? = nil, filterToDate: String? = nil, filterCardId: Int? = nil, filterHistoryItemType: HistoryItemType? = nil, filterCurrentUser: Bool? = nil) -> RequestBuilder<ResultModelOfHistoryAggregateWithdrawRewardModel> {
        let localVariablePath = "/v1.2/History/AggregateWithdrawRewardPurchase"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.fromDate": filterFromDate?.encodeToJSON(),
            "filter.toDate": filterToDate?.encodeToJSON(),
            "filter.cardId": filterCardId?.encodeToJSON(),
            "filter.historyItemType": filterHistoryItemType?.encodeToJSON(),
            "filter.currentUser": filterCurrentUser?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfHistoryAggregateWithdrawRewardModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Отправить историю на почту.
     
     - parameter filterFromDate: (query) Дата с которой необходимо вывести историю. (optional)
     - parameter filterToDate: (query) Дата до которой необходимо вывести историю. (optional)
     - parameter filterCardId: (query) ID карты. Если указан, то будет получена история только по этой карте. (optional)
     - parameter filterFrom: (query) Начиная с какого элемента необходимо выводить. (optional)
     - parameter filterCount: (query) Кол-во элементов для вывода. (optional)
     - parameter filterHistoryItemType: (query) Тип события в истории {Loymax.Mobile.Contract.Models.History.HistoryFilter.HistoryItemType}. (optional)
     - parameter filterChequeNumber: (query) Номер чека. (optional)
     - parameter filterOperationTypes: (query) Типы операций. (optional)
     - parameter filterCurrentUser: (query) По текущему пользователю, или по группе пользователя. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func historySendHistoryToEmail(filterFromDate: String? = nil, filterToDate: String? = nil, filterCardId: Int? = nil, filterFrom: Int? = nil, filterCount: Int? = nil, filterHistoryItemType: HistoryItemType? = nil, filterChequeNumber: String? = nil, filterOperationTypes: [HistoryItemOperationType]? = nil, filterCurrentUser: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return historySendHistoryToEmailWithRequestBuilder(filterFromDate: filterFromDate, filterToDate: filterToDate, filterCardId: filterCardId, filterFrom: filterFrom, filterCount: filterCount, filterHistoryItemType: filterHistoryItemType, filterChequeNumber: filterChequeNumber, filterOperationTypes: filterOperationTypes, filterCurrentUser: filterCurrentUser).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Отправить историю на почту.
     - PUT /v1.2/History/SendToEmail
     - parameter filterFromDate: (query) Дата с которой необходимо вывести историю. (optional)
     - parameter filterToDate: (query) Дата до которой необходимо вывести историю. (optional)
     - parameter filterCardId: (query) ID карты. Если указан, то будет получена история только по этой карте. (optional)
     - parameter filterFrom: (query) Начиная с какого элемента необходимо выводить. (optional)
     - parameter filterCount: (query) Кол-во элементов для вывода. (optional)
     - parameter filterHistoryItemType: (query) Тип события в истории {Loymax.Mobile.Contract.Models.History.HistoryFilter.HistoryItemType}. (optional)
     - parameter filterChequeNumber: (query) Номер чека. (optional)
     - parameter filterOperationTypes: (query) Типы операций. (optional)
     - parameter filterCurrentUser: (query) По текущему пользователю, или по группе пользователя. (optional)
     - returns: RequestBuilder<ResultModel> 
     */
    open class func historySendHistoryToEmailWithRequestBuilder(filterFromDate: String? = nil, filterToDate: String? = nil, filterCardId: Int? = nil, filterFrom: Int? = nil, filterCount: Int? = nil, filterHistoryItemType: HistoryItemType? = nil, filterChequeNumber: String? = nil, filterOperationTypes: [HistoryItemOperationType]? = nil, filterCurrentUser: Bool? = nil) -> RequestBuilder<ResultModel> {
        let localVariablePath = "/v1.2/History/SendToEmail"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "filter.fromDate": filterFromDate?.encodeToJSON(),
            "filter.toDate": filterToDate?.encodeToJSON(),
            "filter.cardId": filterCardId?.encodeToJSON(),
            "filter.from": filterFrom?.encodeToJSON(),
            "filter.count": filterCount?.encodeToJSON(),
            "filter.historyItemType": filterHistoryItemType?.encodeToJSON(),
            "filter.chequeNumber": filterChequeNumber?.encodeToJSON(),
            "filter.operationTypes": filterOperationTypes?.encodeToJSON(),
            "filter.currentUser": filterCurrentUser?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
