class Deal {
	var name: String
	var ev: Double
	var ltmEVRev: Double
	var ltmEVEBITDA: Double
	
	init(_ nameInput: String, _ evInput: Double, _ ltmEVRevInput: Double, _ ltmEVEBITDAInput: Double) {
		name = nameInput
		ev = evInput
		ltmEVRev = ltmEVRevInput
		ltmEVEBITDA = ltmEVEBITDAInput
	}
}

var deals = [Deal]()

func addDeals() {
deals.append(Deal("Intacct / Sage", 500, 9.7, 14.5))
}


addDeals()

var dealCount = 0.0
var sum = 0.0
var mean = 0.0

for deal in deals {
	print(deal.name)
	print(deal.ev)
	print(deal.ltmEVRev)
	print(deal.ltmEVEBITDA)
	dealCount += 1
	sum += deal.ltmEVRev
}

func calculateMean() {
	mean = sum / dealCount
}

calculateMean()

print(" ")
print("Deal Count: \(dealCount)")
print("Sum: \(sum)")
print("Mean: \(mean)")
