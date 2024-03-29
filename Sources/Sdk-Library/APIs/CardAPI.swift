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
            "X-PlatformType": "Ios",
            "Accept": "application/json",
            "X-SdkVersion":"2021.1.2012.119",
            "X-DeviceId":"9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64",
            "X-PlatformVersion":"15.5",
            "User-Agent":["Loymax-Mobile-dev.loymax.playground/1.0","(Ios/15.5; Simulator)","9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64","build/1.0"],
            "Accept-Language":"ru",
            "Authorization": "Bearer r7LhY_I2CrUoMTXznLM7lXH9SvSFE2UlFw7ha0ZMrXxlLwhZYVpn_dCu9pSfaI6xwnko0HoO7HoMm7j17IhWLPF7Kf6N3jm-O-wv3rriPB-0psWbBAdzC7rGTRmpEEuLBdCYeXK5irlTf0oo1gUtvf4Klluz-F3wcvcRw9rkNo5vtzvcqvLe7D7AUfH1cIA6b2gFrHz-cPrFb1l8Nr9r10qBWir5PB6L9sEqLdo9ZLXhxgGrgFQjFJHM9nRffSwHZLgD11eOI1i2qJG0vYMBqsR_Tg_pfZk6JHcDMCJOLe-C5psgC72sd5DG73T7EQ1DZZE8GoRJCFmiFGdnRW6by4N8nDbIP_HEZ_WdGCGjuKR7SVJi6SrRz0SRPLyZs1ec4QlY1Ke35hTpPwb8k9rVM4WWJyGwzwr5fX8Ut_x1Ax3p5FzpAO-pwEJTiesCxo1_",
        ]
        /**5452-23: 1d9152e5d6764126a2b132b6909e2ffc: 2022-06-22T03:29:59.7929190Z: GET: https://demo.loymax.tech/publicapi/v1.2/Cards, remoteIp=192.168.100.22, clientIp=192.168.100.22
         Connection: close
         Accept: application/json
         Accept-Encoding: gzip, deflate, br
         Accept-Language: ru
         Host: demo.loymax.tech
         User-Agent: Loymax-Mobile-dev.loymax.playground/1.0 (Ios/15.5; Simulator) 9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64 build/1.0
         X-Real-IP: 176.65.38.112
         X-Forwarded-For: 176.65.38.112
         X-PlatformVersion: 15.5
         X-SdkVersion: 2021.1.2012.119
         X-DeviceId: 9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64
         X-PlatformType: Ios*/

        /**5452-19: ab800be899a34112b977108297e53b44: 2022-06-22T06:07:18.0263602Z: GET: https://demo.loymax.tech/publicapi/v1.2/Cards, remoteIp=192.168.100.22, clientIp=192.168.100.22
         Connection: close
         Accept: application/json
         Accept-Encoding: gzip, deflate, br
         Accept-Language: ru
         Host: demo.loymax.tech
         User-Agent: Loymax-Mobile-dev.loymax.playground/1.0,(Ios/15.5; Simulator),9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64,build/1.0
         X-Real-IP: 176.65.38.112
         X-Forwarded-For: 176.65.38.112
         X-PlatformVersion: 15.5Test
         X-SdkVersion: 2021.1.2012.119
         X-DeviceId: 9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64*/
        
        
        
        //[
        //{"Key":"Accept", "Value":["application/json"]},
        //{"Key":"X-SdkVersion", "Value":["2021.1.2012.119"]},
        //{"Key":"X-DeviceId","Value":["9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64"]},
        //{"Key":"X-PlatformType","Value":["Ios"]},
        //{"Key":"X-PlatformVersion","Value":["15.5"]},
        //{"Key":"User-Agent","Value":["Loymax-Mobile-dev.loymax.playground/1.0","(Ios/15.5; Simulator)","9a9fb4c4-5ae4-45bb-96a4-5188e38a3d64","build/1.0"]},
        //{"Key":"Accept-Language","Value":["ru"]},
        //{"Key":"Authorization","Value":["Bearer r7LhY_I2CrUoMTXznLM7lXH9SvSFE2UlFw7ha0ZMrXxlLwhZYVpn_dCu9pSfaI6xwnko0HoO7HoMm7j17IhWLPF7Kf6N3jm-O-wv3rriPB-0psWbBAdzC7rGTRmpEEuLBdCYeXK5irlTf0oo1gUtvf4Klluz-F3wcvcRw9rkNo5vtzvcqvLe7D7AUfH1cIA6b2gFrHz-cPrFb1l8Nr9r10qBWir5PB6L9sEqLdo9ZLXhxgGrgFQjFJHM9nRffSwHZLgD11eOI1i2qJG0vYMBqsR_Tg_pfZk6JHcDMCJOLe-C5psgC72sd5DG73T7EQ1DZZE8GoRJCFmiFGdnRW6by4N8nDbIP_HEZ_WdGCGjuKR7SVJi6SrRz0SRPLyZs1ec4QlY1Ke35hTpPwb8k9rVM4WWJyGwzwr5fX8Ut_x1Ax3p5FzpAO-pwEJTiesCxo1_"]}]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ResultModelOfListOfCardInfo>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
