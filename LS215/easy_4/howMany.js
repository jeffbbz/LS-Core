
function countOccurrences(vehicleArr) {
  let counts = {}
  vehicleArr.forEach(vehicle => {
    if (counts[vehicle]) {
      counts[vehicle] += 1;
    } else {
      counts[vehicle] = 1;
    }
  })

  for (const countsKey in counts) {
    console.log(countsKey + ' => ' + counts[countsKey]);
  }
}


const vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'suv', 'motorcycle', 'car', 'truck'];

countOccurrences(vehicles);

// console output
// car => 4
// truck => 3
// SUV => 1
// motorcycle => 2
// suv => 1