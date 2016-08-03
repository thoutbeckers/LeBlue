package houtbecke.rs.le.interceptor;


import houtbecke.rs.le.session.Event;
import houtbecke.rs.le.session.EventSink;


public class StringEventSinkUtil implements EventSinkUtil{


    @Override
    public  String write(EventSink eventSink) {
        StringBuilder sb = new StringBuilder();
        for(Event e : eventSink.getEvents()){
                sb.append(e.toString());
                sb.append(System.getProperty("line.separator"));
        }
        return sb.toString();
    }

}
