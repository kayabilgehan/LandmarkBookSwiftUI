import SwiftUI
import MapKit

//struct MapView: View {
struct MapView: UIViewRepresentable {
    //typealias UIViewType = MKMapView
    
    var coordinate: CLLocationCoordinate2D
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkArray[0].locationCoordinate)
    }
}
