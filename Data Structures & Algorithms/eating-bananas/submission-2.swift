class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        return minEatingSpeedOptimise(piles, h)
        // let max = piles.max() ?? 0

        // for speed in 1...max {
        //     var hr = 0
            
        //     for pile in piles {
        //         hr += (pile/speed) + (pile%speed == 0 ? 0 : 1)
        //         if hr > h {
        //             break
        //         }
        //     }

        //     if hr <= h {
        //         return speed
        //     }
        // }
        // return 0
    }

     func minEatingSpeedOptimise(_ piles: [Int], _ h: Int) -> Int {
       guard let maxPile = piles.max() else { return 0 }

        var left = 1
        var right = maxPile

        while left < right {
            let speed = left + (right - left) / 2
            var hours = 0

            for pile in piles {
                hours += pile / speed + (pile % speed == 0 ? 0 : 1)

                if hours > h {
                    break
                }
            }

            if hours <= h {
                // This speed works; keep it and search for a smaller one.
                right = speed
            } else {
                // This speed and all smaller speeds fail.
                left = speed + 1
            }
        }

        return left
    }
}
