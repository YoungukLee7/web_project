package chap05.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FileConfigServlet extends HttpServlet{
	
	Map<String, String> servletFileConfig = new HashMap<>();
	
	@Override
	// ServletConfig : servletContext의 객체를 얻는 기능, 서블릿의 초기화 작업 기능
	public void init(ServletConfig config) throws ServletException {
		
		// JSP 웹 프로젝트로 File을 다룰 때는 getRealPath()를 사용해야 한다
		// forward 등 웹 관련 메서드 사용시에는 webapp경로를 사용하지만
		// 자바 관련 클래스를 사용시에는 실제 경로를 사용해야 한다
		
		// 서블릿 컨텍스트(ServletContext)란 하나의 서블릿이 서블릿 컨테이너와 통신하기 위해서
		// 사용되어지는 메서드들을 가지고 있는 클래스가 바로 ServletContext다.
		
		// System.out.println(req.getServletContext().getRealPath("/"));
		// 모든 서버는 다 webapp을 가지고 있다
		// 위 경로가 이클립스에서 만든 가상의 서버에서 우리가 만든 가상의 프로그램을 연결해 실행해주는 주소이다.
		// (실제로 우리가 만든 프로그램은 workspace에 저장되어 있다.)
		// (프로젝트와 톰캣의 연결을 끈으면 가상의 장소에 있는 데이터는 없어진다)
		// getRealPath로 경로를 지정해주면 어떠한 컴퓨터에도 돌아가게 된다.(리눅스도 가능)
		
		String servletConfigPath = config.getInitParameter("servlet-config");
		
		
		File root = new File(config.getServletContext().getRealPath("/"));
		File servletConfigFile = new File(root, servletConfigPath);
		
		try (
				FileReader fin = new FileReader(servletConfigFile);
				BufferedReader in = new BufferedReader(fin);
		){
			String line = null;
			while ((line = in.readLine()) != null) {
				String[] keyAndValue = line.split("=");
				
				servletFileConfig.put(keyAndValue[0], keyAndValue[1]);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(servletFileConfig);
		System.out.println(servletFileConfig.get("user"));
		System.out.println(servletFileConfig.get("password"));
		System.out.println(servletFileConfig.get("resource"));
	}
}
