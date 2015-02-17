package tests;


import houtbecke.rs.le.mock.NativeWaitNotify;
import houtbecke.rs.le.mock.WaitNotify;

import static org.junit.Assert.assertEquals;

public class WaitNotifyTest {

    int counter;
    WaitNotify waitNotify;


    class Thread1 extends  Thread{
        public void run() {
            counter++;
            try {
                waitNotify.simpleWait();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            counter++;


        }
    }


    class Thread2 extends  Thread{
        public void run() {
            counter++;
            try {
                waitNotify.simpleWait(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            counter++;


        }
    }

    @org.junit.Test
    public void testWait() throws InterruptedException {
        counter =0;
        waitNotify = new NativeWaitNotify();
        Thread1 thread1 = new Thread1();
        thread1.start();
        Thread.sleep(10);
        assertEquals(1, counter);
        waitNotify.simpleNotifyAll();
        Thread.sleep(110);

        assertEquals(2, counter);

    }

    @org.junit.Test
    public void testWaitTime1() throws InterruptedException {
        counter =0;
        waitNotify = new NativeWaitNotify();
        Thread2 thread = new Thread2();
        thread.start();
        Thread.sleep(100);
        assertEquals(1, counter);
        waitNotify.simpleNotifyAll();
        Thread.sleep(200);

        assertEquals(2, counter);

    }


    @org.junit.Test
    public void testWaitTime2() throws InterruptedException {
        counter =0;
        waitNotify = new NativeWaitNotify();
        Thread2 thread = new Thread2();
        thread.start();
        Thread.sleep(100);
        assertEquals(1, counter);
        Thread.sleep(1100);

        assertEquals(2, counter);

    }

}
