## DEMO - Add Delete Actions to Table View Row

### *Tech Used*
* Xcode 11.4.1
* Swift 5.1
* iOS 13

Frameworks:  
- UIKit

### *Description*

This app demonstrates the requirements to simply add delete functionality to a table view row in iOS:

- Add the `UITableViewDataSource` protocol to your class, if necessary. (The `UITableViewController` class internally declares this protocol.)
- If your table view requires that some rows NOT be editable, then implement the `tableView(_:canEditRow:)` method. Return `true` if the row is editable or `false` if it's not.
- Implement the `tableView(_:commit:forRowAt:)` method, including the following actions when `editingStyle` is `delete`:    
&nbsp;&nbsp;1. Delete the source data for the current row  
&nbsp;&nbsp;2. Delete the table view's row  


### *Setup Requirements*

Nothing special - just clone and go!

