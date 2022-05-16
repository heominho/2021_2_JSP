package week14;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecondHandler implements CommandHandler{
		@Override
		public String process(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
		request.setAttribute("command", "Second È­¸é");
		return "mainPage";
	}
}
