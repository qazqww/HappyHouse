package com.ssafy.happyhouse.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.HouseInfoDto;
import com.ssafy.happyhouse.model.SidoGugunCodeDto;
import com.ssafy.happyhouse.model.service.HouseMapService;

@RestController
@RequestMapping("/map")
public class HouseMapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Autowired
	private HouseMapService houseMapService;
	
	@GetMapping("/sido")
	public ResponseEntity<List<SidoGugunCodeDto>> sido() throws Exception {
		return new ResponseEntity<List<SidoGugunCodeDto>>(houseMapService.getSido(), HttpStatus.OK);
	}
	
	@GetMapping("/gugun")
	public ResponseEntity<List<SidoGugunCodeDto>> gugun(@RequestParam("sido") String sido) throws Exception {
		return new ResponseEntity<List<SidoGugunCodeDto>>(houseMapService.getGugunInSido(sido), HttpStatus.OK);
	}
	
	@GetMapping("/dong")
	public ResponseEntity<List<HouseInfoDto>> dong(@RequestParam("gugun") String gugun) throws Exception {
		return new ResponseEntity<List<HouseInfoDto>>(houseMapService.getDongInGugun(gugun), HttpStatus.OK);
	}
	
	@GetMapping("/apt")
	public ResponseEntity<List<HouseInfoDto>> apt(@RequestParam("dong") String dong) throws Exception {
		return new ResponseEntity<List<HouseInfoDto>>(houseMapService.getAptInDong(dong), HttpStatus.OK);
	}
	
	@GetMapping("/detail")
	public ResponseEntity<List<HouseDealDto>> detail(@RequestParam("lat") String lat, @RequestParam("lng") String lng) throws Exception {
		return new ResponseEntity<List<HouseDealDto>>(houseMapService.getAptDetail(lat, lng), HttpStatus.OK);
	}
	
	
//	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setCharacterEncoding("utf-8");
//		
//		String act = request.getParameter("act");
//		
//		if("sido".equals(act)) { // sido
//			PrintWriter out = response.getWriter();
//			List<SidoGugunCodeDto> list = null;
//			JSONArray arr = new JSONArray();
//			try {
//				list = HouseMapServiceImpl.getHouseMapService().getSido();
//				for(SidoGugunCodeDto dto : list) {
//					System.out.println(dto);
//					JSONObject obj = new JSONObject(); // JSON 객체를 만들어서
//					obj.put("sido_code", dto.getSidoCode()); // attr를 집어넣는다
//					obj.put("sido_name", dto.getSidoName());
//					arr.add(obj); // JSON 배열에 JSON 객체를 넣는다.
//				}
//			} catch (Exception e) {
//				arr = new JSONArray();
//				JSONObject obj = new JSONObject();
//				obj.put("message_code", "-1");
//				arr.add(obj);
//				e.printStackTrace();
//			} finally {
//				out.print(arr.toJSONString());
//				out.close();
//			}
//		}//gugun
//		else if("gugun".equals(act)) {
//			String sido = request.getParameter("sido");
//			PrintWriter out = response.getWriter();
//			List<SidoGugunCodeDto> list = null;
//			JSONArray arr = new JSONArray();
//			try {
//				list = HouseMapServiceImpl.getHouseMapService().getGugunInSido(sido);
//				for(SidoGugunCodeDto dto : list) {
//					System.out.println(">>" + dto);
//					JSONObject obj = new JSONObject();
//					obj.put("gugun_code", dto.getGugunCode());
//					obj.put("gugun_name", dto.getGugunName());
//					arr.add(obj);
//				}
//			} catch (Exception e) {
//				arr = new JSONArray();
//				JSONObject obj = new JSONObject();
//				obj.put("message_code", "-1");
//				arr.add(obj);
//				e.printStackTrace();
//			} finally {
//				out.print(arr.toJSONString());
//				out.close();
//			}
//		}//dong
//		else if("dong".equals(act)) {
//			String gugun = request.getParameter("gugun");
//			PrintWriter out = response.getWriter();
//			List<HouseInfoDto> list = null;
//			JSONArray arr = new JSONArray();
//			try {
//				list = HouseMapServiceImpl.getHouseMapService().getDongInGugun(gugun);
//				for(HouseInfoDto dto : list) {
//					JSONObject obj = new JSONObject();
//					obj.put("dong_code", dto.getDongCode());
//					obj.put("dong_name", dto.getDongName());
//					arr.add(obj);
//				}
//			} catch (Exception e) {
//				arr = new JSONArray();
//				JSONObject obj = new JSONObject();
//				obj.put("message_code", "-1");
//				arr.add(obj);
//				e.printStackTrace();
//			} finally {
//				out.print(arr.toJSONString());
//				out.close();
//			}
//		}//apt
//		else if("apt".equals(act)) {
//			String dong = request.getParameter("dong");
//			PrintWriter out = response.getWriter();
//			List<HouseInfoDto> list = null;
//			JSONArray arr = new JSONArray();
//			try {
//				list = HouseMapServiceImpl.getHouseMapService().getAptInDong(dong);
//				for(HouseInfoDto dto : list) {
//					JSONObject obj = new JSONObject();
//					obj.put("apt_code", dto.getAptCode());
//					obj.put("dong_name", dto.getDongName());
//					obj.put("apt_name", dto.getAptName());
//					obj.put("dong_code", dto.getDongCode());
//					obj.put("jibun", dto.getJibun());
//					arr.add(obj);
//				}
//			} catch (Exception e) {
//				arr = new JSONArray();
//				JSONObject obj = new JSONObject();
//				obj.put("message_code", "-1");
//				arr.add(obj);
//				e.printStackTrace();
//			} finally {
//				out.print(arr.toJSONString());
//				out.close();
//			} 
//		} else if("detail".equals(act)) { //detail
//			String lat = request.getParameter("lat");
//			String lng = request.getParameter("lng");
//			System.out.println(lat + " " + lng);
//			PrintWriter out = response.getWriter();
//			List<HouseDealDto> list = null;
//			JSONArray arr = new JSONArray();
//			try {
//				list = HouseMapServiceImpl.getHouseMapService().getAptDetail(lat,lng);
//				for(HouseDealDto dto : list) {
//					JSONObject obj = new JSONObject();
//					obj.put("apt_no", dto.getNo());
//					obj.put("floor", dto.getFloor());
//					obj.put("deal_amount", dto.getDealAmount());
//					obj.put("area", dto.getArea());
//					arr.add(obj);
//				}
//			} catch (Exception e) {
//				arr = new JSONArray();
//				JSONObject obj = new JSONObject();
//				obj.put("message_code", "-1");
//				arr.add(obj);
//				e.printStackTrace();
//			} finally {
//				out.print(arr.toJSONString());
//				out.close();
//			} 
//		}
//	}//process

}