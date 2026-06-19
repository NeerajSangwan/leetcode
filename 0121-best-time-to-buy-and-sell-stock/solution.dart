class Solution {
  int maxProfit(List<int> prices) {
    int min = prices[0];
    int profit = 0;
    for(int i=0;i<prices.length;i++){
        if(profit<prices[i]-min){
            profit = prices[i]-min;
        }
        else if(prices[i]<min){
            min = prices[i];
        }
    }return profit;
    
  }
}
