class Deal {
	var name: String
	var ev: Double
	var ltmEVRev: Double
	
	init(_ nameInput: String, _ evInput: Double, _ ltmEVRevInput: Double) {
		name = nameInput
		ev = evInput
		ltmEVRev = ltmEVRevInput
	}
}

var deals = [Deal]()

func addSoftwareDeals() {
deals.append(Deal("Autonomy / HP", 11700, 12.6))
deals.append(Deal("Concur / SAP", 8886, 12.3))
deals.append(Deal("SFSF / SAP", 3737, 11.8))
deals.append(Deal("Demandware / Salesforce", 3031, 11.2))
deals.append(Deal("NetSuite / Oracle", 1300, 10.9))
deals.append(Deal("Eloqua / Oracle", 1300, 9.7))
deals.append(Deal("Ariba / SAP", 1300, 8.5))
deals.append(Deal("ArcSight / HP", 1300, 8.2))
deals.append(Deal("LinkedIn / Microsoft", 1300, 8.2))
deals.append(Deal("ExactTarget / Salesforce", 1300, 13.5))
deals.append(Deal("Cvent / Vista", 1300, 13.5))
deals.append(Deal("Textura / Oracle", 1300, 13.5))
deals.append(Deal("Responsys / Oracle", 1300, 13.5))
deals.append(Deal("Marketo / Vista", 1300, 13.5))
deals.append(Deal("RightNow / Oracle", 1300, 13.5))
deals.append(Deal("Sonic / Rovi", 1300, 13.5))
deals.append(Deal("Acme Packet / Oracle", 1300, 13.5))
deals.append(Deal("Taleo / Oracle", 1300, 13.5))
deals.append(Deal("Sybase / SAP", 1300, 13.5))
deals.append(Deal("Informatica / Permira", 1300, 13.5))
deals.append(Deal("SonicWALL / Dell", 1300, 13.5))
deals.append(Deal("ATG / Oracle", 1300, 13.5))
deals.append(Deal("Kenexa / IBM", 1300, 13.5))
deals.append(Deal("IDC / Investor Group", 1300, 13.5))
deals.append(Deal("Blackboard / Providence Equity", 1300, 13.5))
deals.append(Deal("McAfee / Intel", 1300, 13.5))
deals.append(Deal("SkillSoft / Investor Group", 1300, 13.5))
deals.append(Deal("Misys / Vista Equity", 1300, 13.5))
deals.append(Deal("Deltek / Thoma Bravo", 1300, 13.5))
deals.append(Deal("Radiant Systems / NCR", 1300, 13.5))
deals.append(Deal("PhaseForward / Oracle", 1300, 13.5))
deals.append(Deal("JDA Software / RedPrairie", 1300, 13.5))
deals.append(Deal("Quest / Dell", 1300, 13.5))
deals.append(Deal("Eclipsys / Allscripts and Misys", 1300, 13.5))
deals.append(Deal("Lawson / Infor (Golden Gate)", 1300, 13.5))
deals.append(Deal("MModal / One Equity", 1300, 13.5))
deals.append(Deal("SonicWALL / Investor Group", 1300, 13.5))
deals.append(Deal("Retalix / NCR", 1300, 13.5))
deals.append(Deal("Epicor / Apax", 1300, 13.5))
deals.append(Deal("S1 Corp / ACIWorldwide", 1300, 13.5))
deals.append(Deal("Novell / Attachmate", 1300, 13.5))
}


addSoftwareDeals()

var dealCount = 0.0
var sum = 0.0
var mean = 0.0
var median = 0.0

for deal in deals {
	print(deal.name)
	print(deal.ev)
	print(deal.ltmEVRev)
	print(" ")
	dealCount += 1
	sum += deal.ltmEVRev
}

func calculateMean() {
	mean = sum / dealCount
}

calculateMean()

print("Deal Count: \(dealCount)")
print("Sum: \(sum)")
print("Mean: \(mean)")
print(" ")
print(deals[0].name)
