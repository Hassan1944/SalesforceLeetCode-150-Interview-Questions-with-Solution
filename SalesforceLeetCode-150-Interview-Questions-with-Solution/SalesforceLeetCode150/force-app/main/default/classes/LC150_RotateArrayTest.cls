@isTest
public class LC150_RotateArrayTest {

    // Test when the list is empty
    @isTest
    static void testEmptyList() {
        List<Integer> nums = new List<Integer>();
        Integer k = 3; // Rotation count doesn't matter as the list is empty
        Test.startTest();
        LC150_RotateArray.MyRotate(nums, k); // Static method call
        Test.stopTest();
        
        // Assert that the list remains empty after rotation
        System.assertEquals(0, nums.size(), 'The list should remain empty');
    }

    // Test when the list has one element
    @isTest
    static void testSingleElementList() {
        List<Integer> nums = new List<Integer>{1};
        Integer k = 3;
        Test.startTest();
        LC150_RotateArray.MyRotate(nums, k); // Static method call
        Test.stopTest();
        
        // Assert that the list remains unchanged after rotation
        System.assertEquals(1, nums.size(), 'The list size should remain 1');
        System.assertEquals(1, nums[0], 'The single element should remain unchanged');
    }

    // Test when the rotation count k is 0 (no rotation)
    @isTest
    static void testZeroRotation() {
        List<Integer> nums = new List<Integer>{1, 2, 3, 4, 5};
        Integer k = 0;
        Test.startTest();
        LC150_RotateArray.MyRotate(nums, k); // Static method call
        Test.stopTest();
        
        // Assert that the list remains unchanged
        System.assertEquals(5, nums.size(), 'The list should have 5 elements');
        System.assertEquals(1, nums[0], 'The first element should remain 1');
        System.assertEquals(2, nums[1], 'The second element should remain 2');
        System.assertEquals(3, nums[2], 'The third element should remain 3');
        System.assertEquals(4, nums[3], 'The fourth element should remain 4');
        System.assertEquals(5, nums[4], 'The fifth element should remain 5');
    }

    // Test when the rotation count k is greater than the list size
    @isTest
    static void testRotationGreaterThanListSize() {
        List<Integer> nums = new List<Integer>{1, 2, 3, 4, 5};
        Integer k = 7; // Rotation greater than list size, should rotate as if k = 2
        Test.startTest();
        LC150_RotateArray.MyRotate(nums, k); // Static method call
        Test.stopTest();
        
        // Assert that the list has been rotated correctly
        System.assertEquals(5, nums.size(), 'The list should have 5 elements');
        System.assertEquals(4, nums[0], 'The first element after rotation should be 4');
        System.assertEquals(5, nums[1], 'The second element should be 5');
        System.assertEquals(1, nums[2], 'The third element should be 1');
        System.assertEquals(2, nums[3], 'The fourth element should be 2');
        System.assertEquals(3, nums[4], 'The fifth element should be 3');
    }

    // Test normal case with multiple elements and k less than list size
    @isTest
    static void testNormalRotation() {
        List<Integer> nums = new List<Integer>{1, 2, 3, 4, 5};
        Integer k = 2; // Rotate the list by 2 positions
        Test.startTest();
        LC150_RotateArray.MyRotate(nums, k); // Static method call
        Test.stopTest();
        
        // Assert that the list has been rotated correctly
        System.assertEquals(5, nums.size(), 'The list should have 5 elements');
        System.assertEquals(4, nums[0], 'The first element after rotation should be 4');
        System.assertEquals(5, nums[1], 'The second element should be 5');
        System.assertEquals(1, nums[2], 'The third element should be 1');
        System.assertEquals(2, nums[3], 'The fourth element should be 2');
        System.assertEquals(3, nums[4], 'The fifth element should be 3');
    }

    // Test when the list has multiple elements and the rotation k is exactly the size of the list
    @isTest
    static void testRotationEqualToListSize() {
        List<Integer> nums = new List<Integer>{1, 2, 3, 4, 5};
        Integer k = 5; // Rotate by the full list size (should result in no change)
        Test.startTest();
        LC150_RotateArray.MyRotate(nums, k); // Static method call
        Test.stopTest();
        
        // Assert that the list remains unchanged
        System.assertEquals(5, nums.size(), 'The list should have 5 elements');
        System.assertEquals(1, nums[0], 'The first element should remain 1');
        System.assertEquals(2, nums[1], 'The second element should remain 2');
        System.assertEquals(3, nums[2], 'The third element should remain 3');
        System.assertEquals(4, nums[3], 'The fourth element should remain 4');
        System.assertEquals(5, nums[4], 'The fifth element should remain 5');
    }
}
