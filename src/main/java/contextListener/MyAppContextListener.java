package contextListener;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;

@WebListener
public class MyAppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Initialization code (if needed)
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Cleanup code
        try {
            // Cleanup JDBC resources
            AbandonedConnectionCleanupThread.checkedShutdown();
        } catch (Throwable e) {
            e.printStackTrace();
        }
    }
}

