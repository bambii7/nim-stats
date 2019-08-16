import math

let data = @[0,1,2,3,4,5,6]

proc average(data: seq[int]): int =
  sum(data) div data.len

const mean = average

proc medianOdd(data: seq[int]): int =
  let nth = (data.len + 1) div 2
  return data[nth]

proc median(data: seq[int]): int =
    return medianOdd(data)

echo "Average: ", average(data)
echo "Mean: ", mean(data)
echo "Median: ", median(data)