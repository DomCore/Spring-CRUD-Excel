package ua.zetchenko.factory.dao;

import ua.zetchenko.factory.model.Work;

import java.util.List;

public interface WorkDAO {
    List<Work> allWorks();
    List<Work> searchWorks(String from, String to);
    void add(Work work);
    void delete(Work work);
    void edit(Work work);
    Work getById(int id);

    int worksCount();

    boolean checkId(int id);
}