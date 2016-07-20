package houtbecke.rs.le.interceptor;


public abstract class BaseIntercepting {
    public final int id;


    public BaseIntercepting(int id){
        this.id = id;
    }

    @Override
    public String toString() {
        return getClass().getSimpleName().replace("Intercepting", "")+
                '[' + id + "] ";
    }
}
