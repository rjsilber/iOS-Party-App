import UIKit

// Party.swift provides data for the UITableView items listed (the parties) - the Model class

/* Property considerations: since Party App does not specify an "edit party" feature, no party instance's properties
 will ever be changed upon creation (created at time the user clicks Save button in AddPartyViewController. Therefore,
 all Party properties will be declared as constants, and thus Party class must declare an initializer.
In AddPartyViewController, as per the project instructions, if the user leaves either the party name or the address blank, the Party will neither be created nor saved (display UIAlertViewController). Since only those two were specifically mentioned, I'll take the assumption that the user can still create and save a party if the new party is missing a date. This means that the startDate: Date property can be potentially nil - and thus needs to be declared as an optional and properly handled in the code. Additionally, the use of only a designated initializer for the Party class won't suffice for such cases, and so will also require a convenience initially in the event that the corresponding @IBAction triggers flow of control that eventual leads to calling an initializer for the Party class. Therefore, TODO: ensure that the code prior to calling one of the two Party initializers is able to determine which of the two initializers to call.
 */


// make Party a subclass of NSObject so that Party inherits directly/indirectly from the same base class, NSObject, as the UI objects, such as UIView and UIViewController.
class Party: NSObject {
    // Party class includes four stored properties:
    let id: String
    let name: String
    let address:String
    let startDate: Date? // Date can be nil (optional)
        /* The data used for the Date property is determined by the date chosen by the user from
         the UIDatePicker in the AddPartyViewController. */
    
    
    
    /* An @IBAction method will be triggered as a result of the user adding the properties to create a new Party followed by tapping on the Save button. The Party initializer that gets called as a result will expect to receive the data entered by the user to instantiate the Party object, as well as the id String. */
    
    /* This declares a custom designated initializer for creating an instance of Party. The caller to this method must check first to ensure that all the args passed in (specifically, date) have non-nil values. */
    init(name: String, address: String, date: Date?){ // Party class initializer
        /* Designated initializer - the HBIC initializer for the Party class that: makes sure all the Party properties are assigned a value and that the Party class's superclass's initializer is called, if it has an initializer method. */
        id = UUID().uuidString
        self.name = name
        self.address = address
        startDate = date
        
        super.init() // calls NSObject's initializer
    }
    
    
    /* Since startDate is of type Date?, a convenience initializer is also required for initializing new instance of Party if the user clicks the Save button in AddPartyViewController without selecting a date/time from UIDatePicker. */
    convenience init(name: String, address: String){
        
        self.init(name: name, address: address, date: nil) // calls designated Party initializer
    }
    
    
    
    /* Proj Requirements: Parties should be saved and fetched using UserDefaults.
     Party.swift class will need to be tweaked to make it easily saveabl/fetchable
     to UserDefaults.
     ( possible idea for solution:   protocols )
     
            Note -- code for interacting with UserDefaults (save, fetch all, delete) should be
            inside its own class: Persistence.swift
     
     */

}
