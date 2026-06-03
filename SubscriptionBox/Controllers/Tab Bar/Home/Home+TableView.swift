/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        } else {
            return 10
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return loadCalendarRowTVuCell(indexPath)
        }
        else if indexPath.section == 1{
            return loadHistoryTVuCell(indexPath)
        }
        return UITableViewCell()
    }
}
//MARK: - LOAD CELLS
extension HomeVC{
    func loadCalendarRowTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "GraphTVuCell", for: indexPath) as? GraphTVuCell else {
            return GraphTVuCell()
        }
        return cell
    }
    func loadHistoryTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = homeTableView.dequeueReusableCell(withIdentifier: "HistoryTVuCell", for: indexPath) as? HistoryTVuCell else {
            return HistoryTVuCell()
        }
        cell.configure(indexPath: indexPath)
        return cell
    }
    
}
//MARK: - SETUP TABLE VIEW
extension HomeVC{
    
    func setupTableView(){
        homeTableView.delegate = self
        homeTableView.dataSource = self
        
        homeTableView.rowHeight = UITableView.automaticDimension
        homeTableView.estimatedRowHeight = 150
    }
    //MARK: - REGISTER NIBS
    func registerNibs(){
        let graphNib = UINib(nibName: "GraphTVuCell", bundle: nil)
        homeTableView.register(graphNib, forCellReuseIdentifier: "GraphTVuCell")

        let historyNib = UINib(nibName: "HistoryTVuCell", bundle: nil)
        homeTableView.register(historyNib, forCellReuseIdentifier: "HistoryTVuCell")
    }
}
