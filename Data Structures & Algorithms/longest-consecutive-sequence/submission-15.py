class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        longest = 0
        setNum = set(nums)

        for num in setNum:
            if (num - 1) not in setNum:
                count = 1
                while (num + count) in setNum:
                    count += 1
                longest = max(longest, count)
        return longest
        
        