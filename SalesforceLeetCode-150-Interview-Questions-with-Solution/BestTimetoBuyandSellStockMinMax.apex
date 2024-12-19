public class BestTimetoBuyandSellStockMinMax{
    public static Integer Solution(Integer [] arr){
        Integer minprice = 2147483647; // adding max int value
        
        Integer maxProfit =0;
        for(Integer i=0;i<arr.size();i++){
            Integer currVal = arr[i];
            if(currVal<minprice){
                minprice=currVal;

            }
            Integer profit = currVal-minprice;
            if(profit>maxProfit){
                maxProfit=profit;
            }


        }
        return maxProfit;
    }
}