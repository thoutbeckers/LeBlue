package houtbecke.rs.le.mock;


public class SimpleWaitNotify implements WaitNotify {
    public int waitCounter  = 0;


    @Override
    public void simpleWait(long time) {
        long countedTime=0;
        waitCounter++;
        int myWaitCounter =  waitCounter;
        while (myWaitCounter == waitCounter  && countedTime < time) {
            try {
                Thread.sleep(100);
                countedTime = countedTime + 100;
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }


    }

    @Override
    public void simpleWait() {
        int myWaitCounter =  waitCounter;
        while (myWaitCounter == waitCounter) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }

    @Override
    public void simpleNotifyAll() {
        waitCounter++;
    }
}
