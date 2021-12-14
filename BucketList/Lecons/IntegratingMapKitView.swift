//
//  IntegratingMapKitView.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/12/14.
//

import MapKit
import SwiftUI

struct LocationLecon: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct IntegratingMapKitView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.864716, longitude: 2.349014), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
        LocationLecon(name: "La tour Eiffel", coordinate: CLLocationCoordinate2D(latitude: 48.858093, longitude: 2.294694)),
        LocationLecon(name: "Le musée du Louvre", coordinate: CLLocationCoordinate2D(latitude: 48.861, longitude: 2.335858))
    ]
    
    var body: some View {
            
            NavigationView {
                Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
        //            MapMarker(coordinate: location.coordinate) // just put some marker with no information
                    MapAnnotation(coordinate: location.coordinate) {
                        NavigationLink {
                            Text(location.name)
                        } label: {
                                Circle()
                                    .stroke(.red, lineWidth: 3)
                                    .frame(width: 44, height: 44)
                                
                        }
                    }
                }
                .edgesIgnoringSafeArea(.bottom)
                .navigationTitle("Paris explorer")
            }
    }
}

struct IntegratingMapKitView_Previews: PreviewProvider {
    static var previews: some View {
        IntegratingMapKitView()
    }
}
