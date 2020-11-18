package com.service;

import com.pojo.Paper;

import java.util.List;

public interface PaperService {
    void addPaper(Paper paper) ;//增
    void deletePaper(long id); //删
    void updatePaper(Paper paper);//改
    Paper queryById(long id);//查
    List<Paper> queryAllPaper();//查询所有
}
