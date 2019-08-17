import math, algorithm

let data = @[0,1,2,3,4,5,6]

type
  num = int | float

proc average(data: seq[int]): int =
  sum(data) div data.len

const mean = average # alias mean

proc medianOdd(data: seq[num]): float =
  let nth:int = (data.len + 1) div 2
  return float(data[nth-1])

assert medianOdd(@[0, 1, 2, 3, 4, 5, 6]) == 3
assert medianOdd(@[10, 34, 56, 89, 99, 101, 102]) == 89

proc medianEven(data: seq[num]): float =
  let nth: float = data.len / 2
  let lower:int = int(nth - 0.5)
  let upper:int = int(nth + 0.5)
  return (data[lower] + data[upper]).float / 2.float

assert medianEven(@[0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0]) == 3.5
assert medianEven(@[10, 34, 54, 56, 89, 99, 101, 102]) == 72.5

proc compare(a, b: num): int =
  if a == b: return 0
  if a < b: return -1
  return 1

proc median(data: seq[num]): float =
  var dataSorted = data
  sort(dataSorted, compare)
  if data.len mod 2 == 0:
    return medianEven(dataSorted)
  else:
    return medianOdd(dataSorted)

assert median(@[10, 34, 56, 89, 99, 101, 102]) == 89
assert median(@[10, 34, 54, 56, 89, 99, 101, 102]) == 72.5
assert median(@[10, 101, 102, 34, 54, 99, 56, 89]) == 72.5

echo "Average: ", average(data)
echo "Mean: ", mean(data)
echo "Median: ", median(data)