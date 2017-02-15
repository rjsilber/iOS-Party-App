import UIKit

// Potentially doing the "tweaking" in PartyStore, rather than Party. TODO: reevaluate this decision in a bit. As of now, the the intention behind the PartyStore.swift file is to define the class PartyStore with its one property- an array of Party instances.

// TODO: maybe potentially just declare this class in Party.swift instead of its own file? Note to self: look into whether using special access modifiers (or lack thereof) will still allow PartiesTableViewController to access the PartyStore class.
class PartyStore { // defines the PartyStore class as a base class.
    // property for storing the array of Party instances
    var allParties: [Party] = [] // TODO: persist the data
    
    
    @discardableResult func createParty(name: String, address: String, datePicker: UIDatePicker?) -> Party {
        // first, use optional binding to determine whether datePicker has a value or is nil
        // If it has a value, call designated initializer; otherwise, call convenience initializer
        
        let newParty: Party
        
        // optional binding to unwrap UIDatePicker?
        if let dp = datePicker {
            // datePicker not nil
            let date = dp.date // retrieves the Date value associated with datePicker
            newParty = Party(name: name, address: address, date: date) // calls designated Party initializer
            

        
        } else{
            // datePicker nil
            newParty = Party(name: name, address: address) // calls convenience Party initializer
        }
        
        allParties.append(newParty) // adds Party instance newParty to the allParties array
        return newParty // since discardable, callers are not required to retrieve return value
        
    }
    
    // mock data for PartyStore initializer;   TODO:  remove later
    init() {
        createParty(name: "Pity Party", address: "2100 I St NW, Washington, DC 20052", datePicker: nil)
        createParty(name: "Pool Party", address: "2400 K St NW, Washington, DC", datePicker: nil)
    }
    
    
    
}

// benefit adding this additional layer of abstraction in between the model and controller: since PartyStore is a base class, unlike Party class, it doesn't have to deal with the requirements that Party is subjected to as a subclass of NSObject. Thus, PartiesTableViewController will call the createParty() method in the PartyStore class, and PartyStore will be responsible for the creation of new Party instances and handling the array of Party instances.
