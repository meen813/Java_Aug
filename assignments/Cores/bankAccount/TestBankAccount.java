
public class TestBankAccount {
    public static void main(String[] args){
        BankAccount bankAccount1 = new BankAccount();
        BankAccount bankAccount2 = new BankAccount();
        bankAccount1.depositAccount("saving", 200.00);
        bankAccount2.depositAccount("checking", 999.00);
        bankAccount1.withdrawlAccount("saving", 199.00);
        bankAccount2.withdrawlAccount("checking", 999.00);
       

        bankAccount1.totalBalance();
        bankAccount2.totalBalance();
        
    }
}
