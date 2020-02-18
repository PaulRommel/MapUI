//
//  MapView.swift
//  MapUI
//
//  Created by Павел Попов on 17.02.2020.
//  Copyright © 2020 Павел Попов. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    // view configuration
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    // sets the coordinates on the map
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(latitude: 55.00000, longitude: 36.000123)
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
