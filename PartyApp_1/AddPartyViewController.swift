import UIKit

class AddPartyViewController: UIViewController {

    @IBOutlet var enterPartyTextView: UITextField!
    
    @IBOutlet var datePicker: UIDatePicker!
    
    @IBOutlet var addressTextField: UITextView!
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        if enterPartyTextView.hasText && addressTextField.hasText {
            // create party
        } else {
            
            let alertController = UIAlertController(title: "Missing fields", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) {
                (action) -> Void in
            }
            alertController.addAction(okAction)
        }
    
    }
    
}
