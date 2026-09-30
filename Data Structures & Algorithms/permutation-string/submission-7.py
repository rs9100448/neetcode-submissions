class Solution:
    def checkInclusion(self, s1: str, s2: str) -> bool:
        m = len(s1)
        n = len(s2)
        
        if m > n:
            return False

        s1Freq = {}
        windFreq = {}
        left = 0
        for char in s1:
            s1Freq[char] = s1Freq.get(char, 0) + 1
        
        for right in range(0, n):
            windFreq[s2[right]] = windFreq.get(s2[right], 0) + 1
            if m == (right - left + 1):
                print(windFreq, s1Freq)
                if (windFreq == s1Freq):
                    return True

                windFreq[s2[left]] = windFreq.get(s2[left], 0) - 1
                if windFreq.get(s2[left]) == 0:
                    windFreq.pop(s2[left], None)

                left += 1

        return False