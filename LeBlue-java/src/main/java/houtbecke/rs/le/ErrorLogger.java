package houtbecke.rs.le;

import javax.annotation.Nonnull;

public interface ErrorLogger {

        void log(int priority, @Nonnull String tag, @Nonnull String msg);

        void logException(@Nonnull Exception e);
}
