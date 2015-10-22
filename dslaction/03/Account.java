import java.util.List;
import java.util.ArrayList;

public class Account {
    public enum STATUS { OPEN, CLOSED }

    public enum TYPE { TRADING, SETTLEMENT, BOTH }

    private String number;
    private String firstName;
    private List<String> names = new ArrayList<String>();
    private STATUS status = STATUS.OPEN;
    private TYPE accountType = TYPE.TRADING;
    private double interestAccrued = 0.0;

    public Account(String number, String firstName) {
        this.number = number;
        this.firstName = firstName;
    }

    public Account(String number, String firstName, TYPE accountType) {
        this(number, firstName);
        this.accountType = accountType;
    }

    public String getNumber() {
        return this.number;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public List<String> getNames() {
        return this.names;
    }

    public STATUS getStatus() {
        return this.getStatus();
    }

    public TYPE getAccountType() {
        return this.accountType;
    }

    public double getInterestAccrued() {
        return this.interestAccrued;
    }

    public double calculate(final Calculator c) {
        this.interestAccrued = c.calculate(this);
        return this.interestAccrued;
    }
    
    public boolean isOpen() {
        return status.equals(STATUS.OPEN);
    }

    public Account addName(String name) {
        this.names.add(name);
        return this;
    }
}
