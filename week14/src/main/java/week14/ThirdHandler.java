package week14;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ThirdHandler implements CommandHandler{
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response)
		throws Exception{
		request.setAttribute("command", "Third ȭ��");
		return "mainPage";
	}
}
