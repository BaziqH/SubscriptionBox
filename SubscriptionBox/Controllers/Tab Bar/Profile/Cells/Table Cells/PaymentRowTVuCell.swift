//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

class PaymentRowTVuCell: UITableViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var paymentCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCollectionView()
        registerNibs()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
//MARK: - COLLECTION VIEW
extension PaymentRowTVuCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        loadPaymentCVuCell(indexPath)
    }
    
    
}
//MARK: - COLLECTION VIEW FLOWLAYOUT
extension PaymentRowTVuCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width/3 - 10, height: collectionView.frame.height)
    }
}
//MARK: - LOAD CELLS
extension PaymentRowTVuCell{
    func loadPaymentCVuCell(_ indexPath: IndexPath)-> UICollectionViewCell{
        guard let cell = paymentCollectionView.dequeueReusableCell(withReuseIdentifier: "PaymentCVuCell", for: indexPath) as? PaymentCVuCell else { return PaymentCVuCell() }
        return cell
    }
}
//MARK: - SETUP COLLECTION VIEW
extension PaymentRowTVuCell{
    func setupCollectionView(){
        paymentCollectionView.delegate = self
        paymentCollectionView.dataSource = self
    }
    
    func registerNibs(){
        let paymentNib = UINib(nibName: "PaymentCVuCell", bundle: nil)
        paymentCollectionView.register(paymentNib, forCellWithReuseIdentifier: "PaymentCVuCell")
    }
}
