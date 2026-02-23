
import Foundation

class Solution {
    func hasAllCodes(_ s: String, _ k: Int) -> Bool {
        var data: Set<String> = []
        var resCount = Int(truncating: pow(2, k) as NSNumber)
        let sLen = s.count
        
        if sLen < k {
            return false
        }

        var initial = "", len = 0
        for c in s {
            initial += String(c)
            len += 1

            if len >= k {
                data.insert(initial)
                initial.removeFirst()
            }
        }

        return data.count == resCount
    }
}

var s = Solution()
print(s.hasAllCodes("00110110", 2))
