package com.dao;

import com.pojo.Paper;

import java.util.List;

public interface PaperDao {
    void addPaper(Paper paper);

    void deletePaperById(long id);

    void updatePaper(Paper paper);

    Paper queryById(long id);

    List<Paper> queryAllPaper();


}
