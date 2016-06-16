package houtbecke.rs.le.mock;


public class NativeWaitNotify implements WaitNotify {


    @Override
    public synchronized void  simpleWait(long time) throws InterruptedException{

                this.wait(time);

    }

    @Override
    public synchronized  void simpleWait() throws InterruptedException{
            this.wait();

    }

    @Override
    public synchronized void simpleNotifyAll()  {
            this.notifyAll();
    }
}
