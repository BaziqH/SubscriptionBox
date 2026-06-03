//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

class ProfileVC: UIViewController {
//MARK: - OUTLETS
    @IBOutlet weak var profileTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerNibs()
    }

}
