package ua.zetchenko.factory.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.zetchenko.factory.model.Work;

import java.util.List;

@Repository
public class WorkDAOImpl implements WorkDAO {
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Work> allWorks() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("from Work").list();
    }

    @Override
    @SuppressWarnings(value = "unchecked")
    public List<Work> searchWorks(String from, String to) {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("select w from Work w where w.start >:from and w.finish<:to").setParameter("to", to).setParameter("from", from).list();
    }

    @Override
    public void add(Work work) {
        Session session = sessionFactory.getCurrentSession();
        session.persist(work);
    }

    @Override
    public void delete(Work work) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(work);
    }

    @Override
    public void edit(Work work) {
        Session session = sessionFactory.getCurrentSession();
        session.update(work);
    }

    @Override
    public Work getById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Work.class, id);
    }

    @Override
    public int worksCount() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("select count(*) from Work", Number.class).getSingleResult().intValue();
    }

    @Override
    public boolean checkId(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query;
        query = session.createQuery("from Work where id = :id");
        query.setParameter("id", id);
        return query.list().isEmpty();
    }
}