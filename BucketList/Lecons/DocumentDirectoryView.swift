//
//  DocumentDirectoryView.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/11/24.
//

import SwiftUI

struct DocumentDirectoryView: View {
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    var body: some View {
        Text("Hello, World!")
            .onTapGesture {
                let str = "Test Message"
                let url = self.getDocumentsDirectory()
                    .appendingPathComponent("message.txt")
                
                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
            }
    }
}

struct DocumentDirectoryView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentDirectoryView()
    }
}
