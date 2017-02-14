import UIKit

// Party.swift provides data for the UITableView items listed (the parties)

/* Property considerations: since Party App does not specify an "edit party" feature, no party instance's properties
 will ever be changed upon creation (created at time the user clicks Save button in AddPartyViewController. Therefore,
 all Party properties will be declared as constants, and thus Party class must declare an initializer.
 Also, worth noting: since the user won't be able to "Save" (create) a new Party in AddPartyViewController if any of the
 four inputs are empty, none of the properties require the use of Swift optionals. This means that no instance of Party
 will ever be created with a nil value for any of its properties.
 */



class Party {
    // Party class includes four stored properties:
    let id: String
    let startDate: Date
        /* The data used for the Date property is determined by the date chosen by the user from
         the UIDatePicker in the AddPartyViewController. For now, plan on using a closure */
    let name: String
    let address:String
    
    /* An @IBAction method will be triggered as a result of the user adding the properties to create a new Party followed by tapping on the Save button. The Party initializer will expect to receive the data entered by the user to instantiate the Party object. */
    init(name: String, date: Date, address: String){ // Party class initializer
        id = UUID().uuidString
        self.name = name
        self.address = address
        startDate = date
    }
    
    /* Proj Requirements: Parties should be saved and fetched using UserDefaults.
     Party.swift class will need to be tweaked to make it easily saveabl/fetchable
     to UserDefaults.
     ( possible idea for solution:   protocols )
     
            Note -- code for interacting with UserDefaults (save, fetch all, delete) should be
            inside its own class: Persistence.swift
     
     */

}
