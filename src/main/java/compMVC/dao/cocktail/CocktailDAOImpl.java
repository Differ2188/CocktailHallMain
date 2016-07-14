package compMVC.dao.cocktail;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.transaction.annotation.Transactional;


import java.util.List;

public class CocktailDAOImpl implements CocktailDAO{

    private SessionFactory sessionFactory;

    public CocktailDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    @Transactional
    @SuppressWarnings("unchecked")
    public List getAll() {
        Query query = getSession().createQuery("FROM Cocktail");
        return query.list();
    }

}
