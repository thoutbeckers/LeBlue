package houtbecke.rs.le.interceptor;


import android.content.Context;

import com.google.gson.Gson;

import java.io.FileOutputStream;

import houtbecke.rs.le.session.Event;
import houtbecke.rs.le.session.EventSink;


public class AndroidEventSinkUtil implements EventSinkUtil{


    @Override
    public  String write(EventSink eventSink) {
        Gson gson = new Gson();
        return gson.toJson(eventSink.getEvents());
    }

}
