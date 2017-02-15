import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    override func loadView() {
        // create map view
        mapView = MKMapView()
        
        // Set it as the view MapViewController
        view = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
