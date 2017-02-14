import UIKit

class PartiesTableViewController: UITableViewController {
    
    // a UITableViewController's (or subclass's) view is instance of UITable.
    /* Each row in the table view displays the data of an item (an instance of Party - a model object). */
    
    // PartiesTableViewController has optional access to PartyStore and its property allParties
    var partyStore: PartyStore! // the data source
    /* PartyStore declared as a property in the VC to decouple the layers and for easier code maintainability. PartiesTableViewController just receives the store - an array of Party objects, keeping things simple. */
    

}
