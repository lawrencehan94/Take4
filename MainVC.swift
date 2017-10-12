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
  
  func updateData(json: [String: Any]) {
    if let ticker = json["identifier"], let value = json["value"] {
    
    } else {
      print("Failed to find matching ticker and value in data")
    }
  
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
          if let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any] {
            for eachCompany in json {
              let ticker = eachCompany["identifier"]
              let value = eachCompany["value"]
              self.fetchedCountry.append(Company(ticker: ticker, value: value))
            }
          }
        } catch {
          print("Error in JSON serialization")
        }
      }
    })
    
    task.resume()
    
  }
  
  
}
