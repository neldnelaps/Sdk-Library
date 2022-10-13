//
// CouponsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CouponsAPI {

    /**
     Оформляет покупку купона.
     
     - parameter model: (query) Модель запроса на покупку. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsBuy(model: CouponBuyModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCouponPurchaseViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsBuyWithRequestBuilder(model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Оформляет покупку купона.
     - POST /v1.2/Coupons/buy
     - parameter model: (query) Модель запроса на покупку. 
     - returns: RequestBuilder<ResultModelOfCouponPurchaseViewModel> 
     */
    open class func couponsBuyWithRequestBuilder(model: CouponBuyModel) -> RequestBuilder<ResultModelOfCouponPurchaseViewModel> {
        let localVariablePath = "/v1.2/Coupons/buy"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCouponPurchaseViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Аннулирует купон.
     
     - parameter couponId: (path) Внутренний идентификатор купона. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsCancel(couponId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsCancelWithRequestBuilder(couponId: couponId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Аннулирует купон.
     - POST /v1.2/Coupons/{couponId}/cancel
     - parameter couponId: (path) Внутренний идентификатор купона. 
     - returns: RequestBuilder<ResultModel> 
     */
    open class func couponsCancelWithRequestBuilder(couponId: Int) -> RequestBuilder<ResultModel> {
        var localVariablePath = "/v1.2/Coupons/{couponId}/cancel"
        let couponIdPreEscape = "\(APIHelper.mapValueToPathItem(couponId))"
        let couponIdPostEscape = couponIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{couponId}", with: couponIdPostEscape, options: .literal, range: nil)
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
     Генерирует и возвращает купоны.
     
     - parameter model: (query) Модель генерации купонов. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsGenerate(model: CouponsGenerateModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfListOfCouponViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsGenerateWithRequestBuilder(model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Генерирует и возвращает купоны.
     - POST /v1.2/Coupons/generate
     - parameter model: (query) Модель генерации купонов. 
     - returns: RequestBuilder<ResultModelOfListOfCouponViewModel> 
     */
    open class func couponsGenerateWithRequestBuilder(model: CouponsGenerateModel) -> RequestBuilder<ResultModelOfListOfCouponViewModel> {
        let localVariablePath = "/v1.2/Coupons/generate"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfCouponViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает список купонов.
     
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter couponListFilterEmissionIds: (query)  (optional)
     - parameter couponListFilterCouponStates: (query)  (optional)
     - parameter couponListFilterChangedStateDateFrom: (query)  (optional)
     - parameter couponListFilterChangedStateDateTo: (query)  (optional)
     - parameter couponListFilterCouponNumber: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsGetCoupons(from: Int? = nil, count: Int? = nil, couponListFilterEmissionIds: [Int]? = nil, couponListFilterCouponStates: [CouponState]? = nil, couponListFilterChangedStateDateFrom: String? = nil, couponListFilterChangedStateDateTo: String? = nil, couponListFilterCouponNumber: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfPagedViewModelOfCouponViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsGetCouponsWithRequestBuilder(from: from, count: count, couponListFilterEmissionIds: couponListFilterEmissionIds, couponListFilterCouponStates: couponListFilterCouponStates, couponListFilterChangedStateDateFrom: couponListFilterChangedStateDateFrom, couponListFilterChangedStateDateTo: couponListFilterChangedStateDateTo, couponListFilterCouponNumber: couponListFilterCouponNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает список купонов.
     - GET /v1.2/Coupons
     - parameter from: (query) Порядковый номер начального элемента выборки. (optional)
     - parameter count: (query) Количество возвращаемых элементов выборки. (optional)
     - parameter couponListFilterEmissionIds: (query)  (optional)
     - parameter couponListFilterCouponStates: (query)  (optional)
     - parameter couponListFilterChangedStateDateFrom: (query)  (optional)
     - parameter couponListFilterChangedStateDateTo: (query)  (optional)
     - parameter couponListFilterCouponNumber: (query)  (optional)
     - returns: RequestBuilder<ResultModelOfPagedViewModelOfCouponViewModel> 
     */
    open class func couponsGetCouponsWithRequestBuilder(from: Int? = nil, count: Int? = nil, couponListFilterEmissionIds: [Int]? = nil, couponListFilterCouponStates: [CouponState]? = nil, couponListFilterChangedStateDateFrom: String? = nil, couponListFilterChangedStateDateTo: String? = nil, couponListFilterCouponNumber: String? = nil) -> RequestBuilder<ResultModelOfPagedViewModelOfCouponViewModel> {
        let localVariablePath = "/v1.2/Coupons"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "from": from?.encodeToJSON(),
            "count": count?.encodeToJSON(),
            "couponListFilter.emissionIds": couponListFilterEmissionIds?.encodeToJSON(),
            "couponListFilter.couponStates": couponListFilterCouponStates?.encodeToJSON(),
            "couponListFilter.changedStateDateFrom": couponListFilterChangedStateDateFrom?.encodeToJSON(),
            "couponListFilter.changedStateDateTo": couponListFilterChangedStateDateTo?.encodeToJSON(),
            "couponListFilter.couponNumber": couponListFilterCouponNumber?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfPagedViewModelOfCouponViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Возвращает информацию о купоне.
     
     - parameter couponId: (path) Внутренний идентификатор купона. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsGetInfo(couponId: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCouponViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsGetInfoWithRequestBuilder(couponId: couponId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Возвращает информацию о купоне.
     - GET /v1.2/Coupons/{couponId}
     - parameter couponId: (path) Внутренний идентификатор купона. 
     - returns: RequestBuilder<ResultModelOfCouponViewModel> 
     */
    open class func couponsGetInfoWithRequestBuilder(couponId: Int) -> RequestBuilder<ResultModelOfCouponViewModel> {
        var localVariablePath = "/v1.2/Coupons/{couponId}"
        let couponIdPreEscape = "\(APIHelper.mapValueToPathItem(couponId))"
        let couponIdPostEscape = couponIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{couponId}", with: couponIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCouponViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Получить информацию о купоне по номеру.
     
     - parameter couponNumber: (path) Номер купона. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsGetInfoByCouponNumber(couponNumber: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCouponViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsGetInfoByCouponNumberWithRequestBuilder(couponNumber: couponNumber).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Получить информацию о купоне по номеру.
     - GET /v1.2/Coupons/{couponNumber}
     - parameter couponNumber: (path) Номер купона. 
     - returns: RequestBuilder<ResultModelOfCouponViewModel> 
     */
    open class func couponsGetInfoByCouponNumberWithRequestBuilder(couponNumber: String) -> RequestBuilder<ResultModelOfCouponViewModel> {
        var localVariablePath = "/v1.2/Coupons/{couponNumber}"
        let couponNumberPreEscape = "\(APIHelper.mapValueToPathItem(couponNumber))"
        let couponNumberPostEscape = couponNumberPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{couponNumber}", with: couponNumberPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCouponViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Метод для выдачи купона из указанного выпуска.
     
     - parameter emissionId: (query) Id выпуска купонов. 
     - parameter personUid: (query) Uid клиента кому выдать купон. (optional)
     - parameter personId: (query) Id клиента кому выдать купон. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsIssueCoupon(emissionId: Int, personUid: String? = nil, personId: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfIssuedCouponModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsIssueCouponWithRequestBuilder(emissionId: emissionId, personUid: personUid, personId: personId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Метод для выдачи купона из указанного выпуска.
     - POST /v1.2/Coupons/couponById
     - parameter emissionId: (query) Id выпуска купонов. 
     - parameter personUid: (query) Uid клиента кому выдать купон. (optional)
     - parameter personId: (query) Id клиента кому выдать купон. (optional)
     - returns: RequestBuilder<ResultModelOfIssuedCouponModel> 
     */
    open class func couponsIssueCouponWithRequestBuilder(emissionId: Int, personUid: String? = nil, personId: Int? = nil) -> RequestBuilder<ResultModelOfIssuedCouponModel> {
        let localVariablePath = "/v1.2/Coupons/couponById"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "emissionId": emissionId.encodeToJSON(),
            "personUid": personUid?.encodeToJSON(),
            "personId": personId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfIssuedCouponModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Оформляет возврат средств.
     
     - parameter model: (query) Модель запроса на возврат. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func couponsRefund(model: CouponRefundModel, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ResultModelOfCouponPurchaseViewModel?, _ error: Error?) -> Void)) -> RequestTask {
        return couponsRefundWithRequestBuilder(model: model).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Оформляет возврат средств.
     - POST /v1.2/Coupons/refund
     - parameter model: (query) Модель запроса на возврат. 
     - returns: RequestBuilder<ResultModelOfCouponPurchaseViewModel> 
     */
    open class func couponsRefundWithRequestBuilder(model: CouponRefundModel) -> RequestBuilder<ResultModelOfCouponPurchaseViewModel> {
        let localVariablePath = "/v1.2/Coupons/refund"
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

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfCouponPurchaseViewModel>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
