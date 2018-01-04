package baseball.board;

import java.io.File;
import java.io.FileOutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import baseball.board.model.BoardRepository;
import baseball.board.model.BoardVo;
import baseball.controller.SubControll;
import baseball.model.PathData;

@Service
public class Board implements SubControll{

	@Resource
	BoardRepository dao;

	@Resource
	PathData data;

	BoardVo vo;
	
	@Override
	public void execute() {
		// TODO Auto-generated method stub
		System.out.println("board ���Լ���:" + data);
		vo = (BoardVo) data.getDd();
		System.out.println("board�� vo��: " + vo);
		switch (data.getService()) {
		case "list":
			System.out.println("�ȳ羾�߾�");
			list();
			break;
			
		case "detail":
			detail();
			break;
		case "insert":
			insert();
			break;
			
		}

	}


   void list() {
        data.setDd(dao.list(data));
    }

   void detail() {
	   System.out.println("�ȳ羾�߻�����");
	   data.setDd(dao.detail(vo));
   }
   
   void insert() {
		fileupload(vo, data.getRequest());
		vo.setCategory1(data.getCate2());
		dao.insert(vo);

		data.setRedirect(true);
		data.setPath("redirect:detail?id="+vo.getId());
	}
   
   void fileupload(BoardVo vo, HttpServletRequest request) { // ���� ���ε� �޼ҵ� !!!!!!!!!!!!!! upfile = ��������,
		// request = ���ε��� ��������
		FileOutputStream fos;
		vo.setOriname(vo.getFile().getOriginalFilename());

		try {
			String outPath = request.getRealPath("/resources/up");
			outPath = "C:\\Users\\pc\\mvc-workspace\\springMvcProj2\\src\\main\\webapp\\resources\\board";
			String realPath = outPath + "\\" + vo.getFile().getOriginalFilename();
			File file = new File(realPath);
			if (file.exists()) {
				int count = 0;
				int dot = vo.getOriname().lastIndexOf(".");
				String nameonly = vo.getOriname().substring(0, dot);
				String hwak = vo.getOriname().substring(dot);

				while (file.exists()) {
					count++;
					vo.setSysname(nameonly + "_" + count + hwak);
					realPath = outPath + "\\" + vo.getSysname();

					file = new File(realPath);
				}
			}

			fos = new FileOutputStream(realPath);
			fos.write(vo.getFile().getBytes());
			fos.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

   
}
