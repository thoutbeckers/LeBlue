package houtbecke.rs.le.interceptor;

public class LeIntercepting extends BaseIntercepting {

    final LeInterceptor leInterceptor;

    public LeIntercepting(LeInterceptor leInterceptor) {
        super(leInterceptor.counter++);
        this.leInterceptor = leInterceptor;
    }

}
