//
//  enumVsStateView.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/11/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Text("Loading...")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success!")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed.")
    }
}

struct enumVsStateView: View {
    enum LoadingState {
        case loading, success, failed
    }
    
    var loadingState = LoadingState.failed
    
    var body: some View {
        Group {
            if loadingState == .loading {
                LoadingView()
            } else if loadingState == .success {
                SuccessView()
            } else {
                FailedView()
            }
        }
    }
}

struct enumVsStateView_Previews: PreviewProvider {
    static var previews: some View {
        enumVsStateView()
    }
}
