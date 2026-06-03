//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

class HistoryTVuCell: UITableViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var historyLabelView: UIStackView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK: - CONFIGURE FUNCTION
    func configure(indexPath: IndexPath){
        if indexPath.row != 0{
            historyLabelView.isHidden = true
        } else {
            historyLabelView.isHidden = false
        }
    }
    
}
