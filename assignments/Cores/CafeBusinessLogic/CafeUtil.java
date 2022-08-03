import java.util.ArrayList;

class CafeUtil {

    //getStreakGoal method
    public int getStreakGoal( int weeks ){
        int sum = 0;
        int i = 1;
        while( i <= weeks){
            sum = sum + i ;
            i++;
        }
        return sum;
    }
    
    //getOrderTotal method
    public double getOrderTotal(double[] prices){
        double total = 0.0;
        for(int i = 0; i <prices.length; i++){
            total += prices[i];
        }
        
        return total;
    }
    
    //displayMenu method
    public void displayMenu(ArrayList<String> menuItems){
        for( int i = 0; i < menuItems.size(); i++){
            System.out.println( i + " " + menuItems.get(i) );
        }
    }

    //addCustomer method
    ArrayList<String> customerList = new ArrayList<String>();
    public void addCustomer(ArrayList<String> customers){
        System.out.println("Please enter your name:");
        String userName = System.console().readLine();
        System.out.println("Hello " + userName + "!");
        System.out.println("There are " + customerList.size() + " people in front of you");
        customerList.add(userName);
        System.out.println(customerList);;

    }
}
