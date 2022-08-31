//
//  DataFetcherService.swift
//  SpaceX
//
//  Created by anita on 24.08.2022.
//

import Foundation

class DataFetcherService {
     
    var dataFetcher: DataFetcher
    
    init(dataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.dataFetcher = dataFetcher
    }
    
    func fetchRockets(completion: @escaping ([Rocket]?) -> Void) {
        let urlRocket = "https://api.spacexdata.com/v4/rockets"
        dataFetcher.fetchGenericJSONData(urlString: urlRocket, response: completion)
    }
    
    
}
