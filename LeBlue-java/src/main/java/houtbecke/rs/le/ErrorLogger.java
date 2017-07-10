package houtbecke.rs.le;



public interface ErrorLogger {

        void log(int priority, String tag, String msg);

        void logException(Exception e);
}
