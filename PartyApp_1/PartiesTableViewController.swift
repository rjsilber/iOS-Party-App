import UIKit

class PartiesTableViewController: UITableViewController {
    
        
    // a UITableViewController's (or subclass's) view is instance of UITable.
    /* Each row in the table view displays the data of an item (an instance of Party - a model object). */
    
    // PartiesTableViewController has optional access to PartyStore and its property allParties
    var partyStore: PartyStore! // the data source
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    // For now, checks the count of the allParties array of partyStore; returns number of rows TODO: later, will use UserDefaults
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyStore.allParties.count
    }
    
    // implement the UITableViewDataSource protocol; method creates a cell and sets its textLabel to the Party String
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a UITableViewCell instance; set appearance to default
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        
        /* To reuse cells, use the code below instead of the code above for constant cell */
//        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        

        
        // get instance of party
        let party = partyStore.allParties[indexPath.row]
        
        // declare a String var to store the text to be displayed in cell:
        var partyStr = "\(party.name)"
        
        // check if party instance has a Date not nil; if so, use DateFormatter
        if let date = party.startDate {
            // Code for formattng the model data for the rows into a String:
                    let dateFormatter = DateFormatter() // creates a DateFormatter
                    dateFormatter.dateFormat = "hh:mm a, MM/dd" // formats the date according to the project's requirements
                    let dateStr = dateFormatter.string(from: date)
                    partyStr += " - \(dateStr)"
        }
        
        /* Set cell's text: */
        cell.textLabel?.text = partyStr
        
        return cell
    }
    

}
