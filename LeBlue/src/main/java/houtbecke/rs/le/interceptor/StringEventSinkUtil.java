package houtbecke.rs.le.interceptor;


import houtbecke.rs.le.session.Event;
import houtbecke.rs.le.session.EventSink;


public class StringEventSinkUtil implements EventSinkUtil{


    @Override
    public  String write(EventSink eventSink) {
        String log= "";
        for(Event e : eventSink.getEvents()){
            log = log + e.toString() + "\n";

        }
        return log;
    }

}
