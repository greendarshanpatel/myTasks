//
//  MapView.swift
//  real_Features
//
//  Created by Darshan on 2020-08-20.
//  Copyright © 2020 DarshanPatel. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    // simple map view load map at given location
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 43.474008, longitude: -80.511165)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
