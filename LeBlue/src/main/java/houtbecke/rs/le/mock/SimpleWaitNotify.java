package houtbecke.rs.le.mock;


public class SimpleWaitNotify implements WaitNotify {
    public int waitCounter  = 0;


    @Override
    public synchronized void simpleWait(long time) {
        long countedTime=0;
        waitCounter++;
        int myWaitCounter =  waitCounter;
        while (myWaitCounter == waitCounter  && countedTime < time) {
            try {
                Thread.sleep(10000);
                countedTime = countedTime + 100;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }


    }

    @Override
    public synchronized void simpleWait() {
        int myWaitCounter =  waitCounter;
     while (myWaitCounter == waitCounter) {
            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public synchronized void simpleNotifyAll() {
        waitCounter++;
    }
}
