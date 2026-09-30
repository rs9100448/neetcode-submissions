class Solution:
    def checkInclusion(self, s1: str, s2: str) -> bool:
        m = len(s1)
        n = len(s2)
        
        if m > n:
            return False

        s1Freq = {}
        for char in s1:
            s1Freq[char] = s1Freq.get(char, 0) + 1
        
        for i in range(0, n-m+1):
            windFreq = {}

            for j in range(i, i+m):
                windFreq[s2[j]] = windFreq.get(s2[j], 0) + 1

            print(windFreq, s1Freq)
            if (windFreq == s1Freq):
                return True
        
        return False