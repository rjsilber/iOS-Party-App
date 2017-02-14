import UIKit

// Potentially doing the "tweaking" in PartyStore, rather than Party. TODO: reevaluate this decision in a bit. As of now, the the intention behind the PartyStore.swift file is to define the class PartyStore with its one property- an array of Party instances.

// TODO: maybe potentially just declare this class in Party.swift instead of its own file? Note to self: look into whether using special access modifiers (or lack thereof) will still allow PartiesTableViewController to access the PartyStore class.
class PartyStore { // defines the PartyStore class as a base class.
    // property for storing the array of Party instances
    var allParties = [Party]() // TODO: persist the data
    
}
