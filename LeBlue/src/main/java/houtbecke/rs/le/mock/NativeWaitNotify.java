package houtbecke.rs.le.mock;


public class NativeWaitNotify implements WaitNotify {
    @Override
    public void simpleWait() {
        try {
            this.wait();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void simpleNotifyAll() {
        synchronized(this) {
            this.notifyAll();
        }
    }
}
