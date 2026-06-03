/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
    
//MARK: - TABLE VIEW
extension ServicesVC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 5
        } else {
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            return loadSearchTVuCell(indexPath)
        case 1:
            return loadServicesTVuCell(indexPath)
        default:
            return UITableViewCell()
        }
    }
}
//MARK: - LOAD CELLS
extension ServicesVC{
    func loadSearchTVuCell(_ indexPath: IndexPath)-> UITableViewCell{
        guard let cell = servicesTableView.dequeueReusableCell(withIdentifier: "SearchTVuCell") as? SearchTVuCell else { return SearchTVuCell() }
        return cell
    }
    func loadServicesTVuCell(_ indexPath: IndexPath)-> UITableViewCell{
        guard let cell = servicesTableView.dequeueReusableCell(withIdentifier: "ServicesTVuCell") as? ServicesTVuCell else { return ServicesTVuCell() }
        return cell
    }
}
//MARK: - SETUP TABLE VIEW
extension ServicesVC{
    func setupTableView(){
        servicesTableView.delegate = self
        servicesTableView.dataSource = self
        
        servicesTableView.rowHeight = UITableView.automaticDimension
        servicesTableView.estimatedRowHeight = 180
    }
    func registerNibs(){
        let seacrhNib = UINib(nibName: "SearchTVuCell", bundle: nil)
        servicesTableView.register(seacrhNib, forCellReuseIdentifier: "SearchTVuCell")
        
        let serviceNib = UINib(nibName: "ServicesTVuCell", bundle: nil)
        servicesTableView.register(serviceNib, forCellReuseIdentifier: "ServicesTVuCell")
    }
}
