
public class BankAccount {
    private double checkingBalance;
    private double savingsBalance;
    private static int numberOfAccounts = 0;
    private static double totalAmount = 0.0;
    // private String accountNumber;

    public BankAccount(){
        this.checkingBalance = 0.0;
        this.savingsBalance = 0.0;
        numberOfAccounts++;
        
    }
    public double getCheckingBalance() {
		return checkingBalance;
	}
	public void setCheckingBalance(double checkingBalance) {
		this.checkingBalance = checkingBalance;
	}
    public double getSavingsBalance() {
		return savingsBalance;
	}
	public void setSavingsBalance(double savingsBalance) {
		this.savingsBalance = savingsBalance;
    }



    public void depositAccount(String accountType, double deposit){
        if(accountType == "checking"){
            setCheckingBalance(getCheckingBalance() + deposit);
            totalAmount += deposit;
            // System.out.printf("You have successfully deposited the amount of $%s in your checking account.", deposit);
        
        
        }
        
        else if(accountType == "saving"){
            setSavingsBalance(getSavingsBalance() + deposit);
            totalAmount += deposit;
            // System.out.printf("You have successfully deposited the amount of $%s in your saving account.", deposit);
            
        }
        else{
            System.out.println("Please check the account type and deposit amount");
        }
    }

    public void withdrawlAccount(String accountType, double withdrawl){
        if(accountType == "checking" && getCheckingBalance() >= withdrawl){
            setCheckingBalance(getCheckingBalance() - withdrawl);
            totalAmount -= withdrawl;

        }
        else if(accountType == "saving" && getSavingsBalance() >= withdrawl){
            setSavingsBalance(getSavingsBalance() - withdrawl);
            totalAmount -= withdrawl;

        }
        else{
            System.out.println("Please check the account type and if your account is insufficient");
        }
    }

    public static int numberOfAccountsCount(){
        return numberOfAccounts;
    }

    public void totalBalance(){
        double balanceTotal = checkingBalance + savingsBalance;
        System.out.println(balanceTotal);
    }

    
}
