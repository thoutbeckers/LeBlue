package houtbecke.rs.le.mock;


public class SimpleWaitNotify implements WaitNotify {
    public int waitCounter  = 0;


    @Override
    public void simpleWait() {
        waitCounter++;
    }

    @Override
    public void simpleNotifyAll() {
        int currentWaitCounter = waitCounter;
        while (currentWaitCounter == waitCounter) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
