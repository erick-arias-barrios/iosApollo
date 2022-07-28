//
//  ErrorView.swift
//  iosApollo
//
//  Created by Erick Arias on 27/07/22.
//

import SwiftUI

struct ErrorView: View {
    @ObservableObject var apolloQVM: ApolloQueryViewModel
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView( apolloQVM: ApolloQueryViewModel() )
    }
}
