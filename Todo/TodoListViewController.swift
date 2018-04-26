
import UIKit

class TodoListViewController: UITableViewController {

    //Declring instances
    let myArray = ["Get Milk","Get Bread","Drink Wine"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    //MARK - TableView DataSource Methods :   how many rows in my tableview  cell view

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = myArray[indexPath.row]
       
        return cell
    }
    
    //MARK - TableView Delegate methods : //manging cliks position
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        //check if marked or not
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
         tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType
                = .checkmark
        }
        
        //animation when item clicked
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    
    
    
    
    
    
}

