import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 *
 * @描述: 启动Dubbo服务用的MainClass.
 * @作者: kleen .
 * @创建时间: 2016.09.01
 * @版本: 1.0 .
 */
public class SystemProvider {

	public static Logger logger = LogManager.getLogger(SystemProvider.class.getName());

	public static void main(String[] args) {
		try {
			ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/spring-context.xml");
			context.start();
		} catch (Exception e) {
			logger.error("== SystemProvider context start error:",e);
 		}
		synchronized (SystemProvider.class) {
			while (true) {
				try {
					SystemProvider.class.wait();
				} catch (InterruptedException e) {
					logger.error("== synchronized error:",e);
				}
			}
		}
	}

}