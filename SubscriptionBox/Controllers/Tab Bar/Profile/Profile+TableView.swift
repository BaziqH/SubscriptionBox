/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

extension ProfileVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return loadLogoTVuCell(indexPath)
        } else if indexPath.section == 1{
            return loadUserInfoTVuCell(indexPath)
        } else if indexPath.section == 2{
            return loadPaymentRowTVuCell(indexPath)
        } else if indexPath.section == 3{
            return loadBillingTVuCell(indexPath)
        } else if indexPath.section == 4{
            return loadBillingCycleTVuCell(indexPath)
        } else if indexPath.section == 5{
            return loadBillingMethodTVuCell(indexPath)
        }
        
        return UITableViewCell()
    }    
}
//MARK: - LOAD CELLS
extension ProfileVC{
    func loadLogoTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "LogoTVuCell", for: indexPath) as? LogoTVuCell else {
            return LogoTVuCell()
        }
        return cell
    }
    func loadUserInfoTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "UserInfoTVuCell", for: indexPath) as? UserInfoTVuCell else {
            return UserInfoTVuCell()
        }
        return cell
    }
    func loadPaymentRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "PaymentRowTVuCell", for: indexPath) as? PaymentRowTVuCell else {
            return PaymentRowTVuCell()
        }
        return cell
    }
    func loadBillingTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "BillingTVuCell", for: indexPath) as? BillingTVuCell else {
            return BillingTVuCell()
        }
        return cell
    }
    func loadBillingCycleTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "BillingCycleTVuCell", for: indexPath) as? BillingCycleTVuCell else {
            return BillingCycleTVuCell()
        }
        return cell
    }
    func loadBillingMethodTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = profileTableView.dequeueReusableCell(withIdentifier: "BillingMethodTVuCell", for: indexPath) as? BillingMethodTVuCell else {
            return BillingMethodTVuCell()
        }
        return cell
    }
}
//MARK: - SETUP TABLE VIEW
extension ProfileVC{
    
    func setupTableView(){
        profileTableView.delegate = self
        profileTableView.dataSource = self
        
        profileTableView.rowHeight = UITableView.automaticDimension
        profileTableView.estimatedRowHeight = 150
    }
    //MARK: - REGISTER NIBS
    func registerNibs(){
        let logoNib = UINib(nibName: "LogoTVuCell", bundle: nil)
        profileTableView.register(logoNib, forCellReuseIdentifier: "LogoTVuCell")

        let userInfoNib = UINib(nibName: "UserInfoTVuCell", bundle: nil)
        profileTableView.register(userInfoNib, forCellReuseIdentifier: "UserInfoTVuCell")
        
        let paymentNib = UINib(nibName: "PaymentRowTVuCell", bundle: nil)
        profileTableView.register(paymentNib, forCellReuseIdentifier: "PaymentRowTVuCell")
        
        let billingNib = UINib(nibName: "BillingTVuCell", bundle: nil)
        profileTableView.register(billingNib, forCellReuseIdentifier: "BillingTVuCell")
        
        let billingCycleNib = UINib(nibName: "BillingCycleTVuCell", bundle: nil)
        profileTableView.register(billingCycleNib, forCellReuseIdentifier: "BillingCycleTVuCell")
        
        let billingMethodNib = UINib(nibName: "BillingMethodTVuCell", bundle: nil)
        profileTableView.register(billingMethodNib, forCellReuseIdentifier: "BillingMethodTVuCell")
    }
}
