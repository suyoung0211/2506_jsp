package org.iclass.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.iclass.dao.CarCO2Dao;
import org.iclass.dto.CarDto;

@WebServlet("/CarSave")
public class CarCO2SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CarCO2SaveServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String carBrand = request.getParameter("carBrand");
		String carModel = request.getParameter("carModel");
		String carVolume = request.getParameter("carVolume");
		String carWeight = request.getParameter("carWeight");
		String carCo2 = request.getParameter("carCo2");
		
		CarDto dto = new CarDto(carBrand, carModel,
				// 서버단에서 유효성 검사하는 예시
				!carVolume.trim().isEmpty() ? Integer.parseInt(carVolume) : 0,
				Integer.parseInt(carWeight),
				Integer.parseInt(carCo2));
		
		System.out.println("모든 파라미터 값 : " + dto);
		CarCO2Dao dao = new CarCO2Dao();
		if (dao.insert(dto) == 1) {
			System.out.println("새로운 데이터 추가 완료 !!");
		}
		
		// 사용자에게 URL Cars 로 다시 요청을 보내도록 응답 전달
		// 목록 페이지로 이동
		response.sendRedirect("Cars");
	}
}
