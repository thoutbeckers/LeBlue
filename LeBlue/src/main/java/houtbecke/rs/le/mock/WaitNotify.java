package houtbecke.rs.le.mock;


public interface WaitNotify {

    public void simpleWait(long time)  throws InterruptedException;
    public void simpleWait()  throws InterruptedException;
    public void simpleNotifyAll();

}
