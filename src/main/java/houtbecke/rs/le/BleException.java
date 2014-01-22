package houtbecke.rs.le;

public class BleException extends Exception {

    public BleException(String message, Exception e) {
        super(message, e);
    }

    public BleException(String message) {
        super(message);
    }
}
