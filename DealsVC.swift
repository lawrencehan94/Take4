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
deals.append(Deal("Intacct / Sage", 500, 9.7))
deals.append(Deal("HP / Autonomy", 1300, 13.5))

}


addSoftwareDeals()

var dealCount = 0.0
var sum = 0.0
var mean = 0.0

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
