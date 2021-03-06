package kybmig.ssm.service;


import kybmig.ssm.mapper.BoardMapper;
import kybmig.ssm.model.BoardModel;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
    private BoardMapper mapper;

    public BoardService(BoardMapper boardMapper) {
        this.mapper = boardMapper;
    }


    public BoardModel findByBoardId(Integer id) {
        return mapper.selectBoard(id);
    }

}
