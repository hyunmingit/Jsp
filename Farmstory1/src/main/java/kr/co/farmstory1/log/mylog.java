package kr.co.farmstory1.log;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;


public class mylog {
	
	private static mylog instance = new mylog();
	public static mylog getInstance() {
		return instance;
	}
	
	private mylog() {}
	
	private Logger _logger = LogManager.getLogger(this.getClass());
	public void debug(String msg) {
		_logger.debug(msg);
	}
	public void info(String msg) {
		_logger.info(msg);
	}
	public void warn(String msg) {
		_logger.warn(msg);
	}
	public void error(String msg) {
		_logger.error(msg);
	}
	public void fatal(String msg) {
		_logger.fatal(msg);
	}
	
	
}
