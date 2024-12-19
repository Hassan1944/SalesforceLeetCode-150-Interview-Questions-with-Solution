/**
169. Majority Element  {{Easy}}
Given an array nums of size n, return the majority element.
The majority element is the element that appears more than ⌊n / 2⌋ times. 
You may assume that the majority element always exists in the array
 */
public with sharing class MajorityElement {
    
    public static Integer methodElementReturn(List<Integer> nums) {
        //Map to Store the count of the Elements
        Map<Integer, Integer> myMapCount = new Map<Integer, Integer>();
    
        // loop to add the count of the elemets to the map 
        for (Integer num : nums) {
            if (myMapCount.containsKey(num)) {
                myMapCount.put(num, myMapCount.get(num) + 1);
            } else {
                myMapCount.put(num, 1);
            }
        }
        
        // Find the Majority Element in the Map
        Integer countofValue = 0;
        Integer value = 0;
        
        for (Integer key : myMapCount.keySet()) {
            Integer temp = myMapCount.get(key);
            if (temp > countofValue) {
                countofValue = temp;
                value = key;
            }
        }
        
        return value;
    }
    
}
