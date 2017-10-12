class Company {
  var ticker: String
  var value: String
  init(ticker: String, value: String) {
    self.ticker = ticker
    self.value = value
  }
}

class MainVC: UIViewController {
  
  var fetchedCompanies = [Company]()
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    getData()
  }
  
  func getData() {
    let userPasswordString = "babf6dca6f14d9dd9d5d9cefbb74cb23:e1fd3e208302dff589f3748c88b0f6f3"
    let userPasswordData = userPasswordString.data(using: String.Encoding.utf8)
    let base64EncodedCredential = userPasswordData!.base64EncodingString(options: Data.Base64EncodingOptions.endLineWithLineFeed)
    let authString = "Basic \(base64EncodedCredential)"
    
    let config = URLSessionConfiguration.default
    
    config.httpAdditionalHeaders = ["Authorization": authString]
    let session = URLSession(configuration: config)
    let url = URL(string: "https://api.intrinio.com/data_point?identifier=\("GOOGL", "FB")&item=\(item)")!
    // MAKE SURE THE ABOVE TICKERS CHANGE TO WHATEVER INDUSTRY YOURE SELECTING
    
    let task = session.dataTask(with: url, completionHandler: {
    (data, response, error) in
      
      if error != nil {
        print("Error with loading data from API")
      }
      
      else {
        do {
            if let fetchedData = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves //or.allowfragments) as! NSArray {
              for eachFetchedCompany in fetchedData {
                let eachCompany = eachFetchedCompany as! [String: Any]
                let tickerPull = eachCompany["identifier"] as! String
                let valuePull = eachCompany["value"] as! String
                
                self.fetchedCompanies.append(Company(ticker: tickerPull, value: valuePull))
              }
            }
            self.tableView.reloadData()
          }
        } catch {
          print("Error in JSON serialization")
        }
      }
    })
    
    task.resume()
    
  }
  
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
  
  numberOfRowsInSection() {
    return fetchedCompanies.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CompanyCell")
    cell.tickerLabel?.text = fetchedCompanies[indexPath.row].ticker
    cell.valueLabel?.text = fetchedCompanies[indexPath.row].value
    return cell
  }
}
