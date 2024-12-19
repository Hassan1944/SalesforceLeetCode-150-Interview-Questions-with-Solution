public Class RotateArray{

    public static void (Integer<Integer> nums, Integer k){

        k = Math.mod(k,nums.size());
        //Reverse Entire list 
        revers(nums, 0, nums.size()-1);
        // Revers only the k elements 
        revers(nums, 0, k-1);
        //reverse the rest of the element 
        revers(nums, k, nums.size()-1);




    }
    void revers(List<Integer> nums, Integer start,Integer end){
        while(start<end){
            Integer temp = nums.get(start);
            nums.set(start, nums.get(end));
            nums.set(end, temp);
            start++;
            end--;

        }

    }

}