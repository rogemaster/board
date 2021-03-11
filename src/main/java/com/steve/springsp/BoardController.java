package com.steve.springsp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.filter.CharacterEncodingFilter;

@Controller
public class BoardController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/board_insert")
	public String boardInsert() {
		
		return "board_insert";
	}
	
	@RequestMapping(value = "/board_save", method = RequestMethod.POST)
	public String boardSave(@RequestParam Map<String , Object> map) {
		
	//	System.out.println("Title :: " + (String)map.get("inputtitle"));
	//	System.out.println("Content :: " + (String)map.get("inputcontent"));
		
		sqlSession.insert("boardmapper.insert", new BoardDto((String)map.get("inputtitle"), (String)map.get("inputcontent")));
		
		return "redirect:/board_list";
		
	}
	
	@RequestMapping(value = "/board_list")
	public String getBoardList(Model model) {
		
		List<Map<String, Object>> list = sqlSession.selectList("boardmapper.getBoardList");
		
	/*	
		for(int i = 0; i < list.size(); i++) {
			System.out.println("No ::" + list.get(i).get("board_no"));
			System.out.println("Title :: " + list.get(i).get("title"));
			System.out.println("Content :: " + list.get(i).get("content"));
			System.out.println("Create Id :: " + list.get(i).get("create_id"));
		}
	*/	
		
		model.addAttribute("list", list);
		
		return "board_list";
	//	return "board_list2";
	}
	
	@RequestMapping(value = "/board_detail")
	public String boardDetail(@RequestParam int no, Model model) {
		
		Map<String, Object> detail = sqlSession.selectOne("boardmapper.getBoardDetail", no);
		
		model.addAttribute("detail", detail);
		
		return "board_detail";
	}
	
	@RequestMapping
	public String boardUpdate(@RequestParam Map<String, Object> map) {
		
		
		
		return "board_list";
	}

}
