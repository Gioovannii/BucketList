//
//  MapView.swift
//  BucketList
//
//  Created by Giovanni Gaffé on 2021/11/25.
//
//


import MapKit
import SwiftUI

struct MapViewSimpleView: UIViewRepresentable {
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapViewSimpleView

        init(_ parent: MapViewSimpleView) {
            self.parent = parent
        }

        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }

        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: UIViewRepresentableContext<MapViewSimpleView>) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator

        let annotation = MKPointAnnotation()
        annotation.title = "Taipei"
        annotation.subtitle = "Capital of Taiwan"
        annotation.coordinate = CLLocationCoordinate2D(latitude: 25.1, longitude: 121.5)
        mapView.addAnnotation(annotation)

        return mapView
    }

    func updateUIView(_ view: MKMapView, context: Context) {}
}

struct MapViewSimpleView_Previews: PreviewProvider {
    static var previews: some View {
        MapViewSimpleView()
    }
}
