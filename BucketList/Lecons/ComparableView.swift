//
//  ComparableView.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/11/24.
//

import SwiftUI

struct User: Identifiable, Comparable {
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
    
    let id = UUID()
    let firstName: String
    let lastName: String
}

struct ComparableView: View {
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister")
    ].sorted()
    
    var body: some View {
        List(users) { user in
            Text("\(user.lastName) \(user.firstName)")
        }
    }
}

struct ComparableView_Previews: PreviewProvider {
    static var previews: some View {
        ComparableView()
    }
}
