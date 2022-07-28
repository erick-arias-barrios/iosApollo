//
//  ContentView.swift
//  iosApollo
//
//  Created by Erick Arias on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var apolloQVM = ApolloQueryViewModel()
    var body: some View {
        
        if apolloQVM.isLoading {
            LoadingView()
        } else if apolloQVM.errorMessage != nil {
            ErrorView(apolloQVM: apolloQVM)
        } else {
            ApolloListView(apolloQueryModel: apolloQVM.apolloQueryModel)
        }
            //.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
