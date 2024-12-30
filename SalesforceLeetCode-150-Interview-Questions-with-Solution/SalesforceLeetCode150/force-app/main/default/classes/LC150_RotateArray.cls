public with sharing class LC150_RotateArray {

    // Constructor Method 
    public LC150_RotateArray() {
    }

    // Method to rotate the array by k positions
    public static  void MyRotate(List<Integer> nums, Integer k){
        // Ensure k is within the bounds of the array size
        k = Math.mod(k, nums.size());

        // Reverse the entire list
        revers(nums, 0, nums.size() - 1);
        
        // Reverse the first k elements
        revers(nums, 0, k - 1);
        
        // Reverse the rest of the list
        revers(nums, k, nums.size() - 1);
    }

    // Static method to reverse a sublist from start to ends indices
     static void revers(List<Integer> nums, Integer start, Integer ends){
        while (start < ends) {
            // Swap elements at start and ends indices
            Integer temp = nums.get(start);
            nums.set(start, nums.get(ends));
            nums.set(ends, temp);
            start++;
            ends--;
        }
    }
}
