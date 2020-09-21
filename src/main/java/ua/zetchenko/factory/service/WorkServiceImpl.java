package ua.zetchenko.factory.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.zetchenko.factory.dao.WorkDAO;
import ua.zetchenko.factory.model.Work;

import java.util.List;

@Service
public class WorkServiceImpl implements WorkService {

    private WorkDAO workDAO;

    @Autowired
    public void setWorkDAO(WorkDAO workDAO) {
        this.workDAO = workDAO;
    }

    @Override
    @Transactional
    public List<Work> allWorks() {
        return workDAO.allWorks();
    }
    @Override
    @Transactional
    public List<Work> searchWorks(String from, String to) {
        return workDAO.searchWorks(from, to);
    }
    @Override
    @Transactional
    public void add(Work work) {
        workDAO.add(work);
    }

    @Override
    @Transactional
    public void delete(Work work) {
        workDAO.delete(work);
    }

    @Override
    @Transactional
    public void edit(Work work) {
        workDAO.edit(work);
    }

    @Override
    @Transactional
    public Work getById(int id) {
        return workDAO.getById(id);
    }

    @Override
    @Transactional
    public int worksCount() {
        return workDAO.worksCount();
    }

    @Override
    @Transactional
    public boolean checkId(int id) {
        return workDAO.checkId(id);
    }
}