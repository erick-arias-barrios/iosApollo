//
//  ApolloQueryViewModel.swift
//  iosApollo
//
//  Created by Erick Arias on 27/07/22.
//

import Foundation
class ApolloQueryViewModel: ObservableObject {
    @Published var apolloQueryModel = [ApolloQueryModel]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    init() {
        fetchAllApollo()
    }
    
    func fetchAllApollo() {
        let url = URL(string: "https://images-api.nasa.gov/search?q=apollo%2011")!
        
        let task = URLSession.shared.dataTask( with: url) { [unowned self] data, response, error in
            
            self.isLoading = false
            let decoder = JSONDecoder()
            if let data = data {
                do{
                    let apolloQueryModel = try decoder.decode([ApolloQueryModel].self, from: data)
                    print(apolloQueryModel)
                    self.apolloQueryModel = apolloQueryModel
                } catch {
                    print(error)
                }
            }
            
        }
        task.resume()
        
    }
    
}








