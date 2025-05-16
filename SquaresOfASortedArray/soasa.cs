public class Solution {
    public int[] SortedSquares(int[] nums) {
        int left = 0;
        int right = nums.Length -1;
        int index = nums.Length -1;
        int biggerIndex = 0;
        int[] result = new int[nums.Length];

        while (left <= right) {
            biggerIndex = nums[left] > nums[right] ? left++ : right--;
            result[index] = nums[biggerIndex] * nums[biggerIndex];
            index--;
        }

        return result;
    }
}

class Program {
    static void Main() {
        var sol = new Solution();
        int[] input = {-4, -1, 0, 3, 10};
        int[] output = sol.SortedSquares(input);
        System.Console.WriteLine(string.Join(", ", output));
    }
}