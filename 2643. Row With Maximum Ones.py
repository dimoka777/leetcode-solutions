# Given a m x n binary matrix mat, find the 0-indexed position of the row
# that contains the maximum count of ones, and the number of ones in that row.
#
# In case there are multiple rows that have the maximum count of ones,
# the row with the smallest row number should be selected.
#
# Return an array containing the index of the row, and the number of ones in it.
#
# Example 1:
#
# Input: mat = [[0,1],[1,0]]
# Output: [0,1]
# Explanation: Both rows have the same number of 1's.
# So we return the index of the smaller row, 0, and the maximum count of ones (1). So, the answer is [0,1].
from typing import List


class Solution:
    def rowAndMaximumOnes(self, mat: List[List[int]]) -> List[int]:
        res = [0, sum(mat[0])]
        for i, v in enumerate(mat):
            if i == 0:
                continue
            if sum(v) > res[1]:
                res = [i, sum(v)]
        return res
