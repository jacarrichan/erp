package com.erp.daoImpl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.erp.dao.PublicDao;
import com.erp.util.Constants;

@SuppressWarnings("unchecked")
@Repository("publicDao")
public class PublicDaoImpl<T> implements PublicDao<T> {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//注册监听器
	/*@PostConstruct
	public void registerListeners() {
	    EventListenerRegistry registry = ((SessionFactoryImpl) sessionFactory).getServiceRegistry().getService(EventListenerRegistry.class);
	    registry.getEventListenerGroup(EventType.POST_COMMIT_INSERT).appendListener(new PostInsert());
	    registry.getEventListenerGroup(EventType.POST_COMMIT_UPDATE).appendListener(new PostUpdate());
	}*/

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	
	public Serializable save(T o) {
		Serializable serializable = this.getCurrentSession().save(o);
		Constants.getLogs(this.getCurrentSession(), o, Constants.LOGS_INSERT, Constants.LOGS_INSERT_TEXT, Constants.LOGS_INSERT_NAME);
		return serializable;
	}

	public void delete(T o) {
		this.getCurrentSession().delete(o);
	}

	public void update(T o) {
		this.getCurrentSession().update(o);
		Constants.getLogs(this.getCurrentSession(), o, Constants.LOGS_UPDATE, Constants.LOGS_UPDATE_TEXT, Constants.LOGS_UPDATE_NAME);
	}
	
	public void deleteToUpdate(T o) {
		this.getCurrentSession().update(o);
		Constants.getLogs(this.getCurrentSession(), o, Constants.LOGS_DELETE, Constants.LOGS_DELETE_TEXT, Constants.LOGS_DELETE_NAME);
	}

	public void saveOrUpdate(T o) {
		this.getCurrentSession().saveOrUpdate(o);
	}

	public List<T> find(String hql) {
		return this.getCurrentSession().createQuery(hql).list();
	}
	
	@SuppressWarnings("rawtypes")
	public List findBySQL(String sql) {
		return this.getCurrentSession().createSQLQuery(sql).list();
	}
	
	public List<T> find(String hql, Map<String, Object> params) {
		Query q = this.getCurrentSession().createQuery(hql);
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				q.setParameter(key, params.get(key));
			}
		}
		return q.list();
	}
	
	public List<T> find(String hql, Map<String, Object> params, Integer page, Integer rows) {
		if (page == null || page < 1) {
			page = 1;
		}
		if (rows == null || rows < 1) {
			rows = 10;
		}
		Query q = this.getCurrentSession().createQuery(hql);
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				q.setParameter(key, params.get(key));
			}
		}
		return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}


	public T get(Class<T> c, Serializable id) {
		return (T) this.getCurrentSession().get(c, id);
	}
	
	public T get(String hql, Map<String, Object>  param) {
		List<T> l = this.find(hql, param);
		if (l != null && l.size() > 0) {
			return l.get(0);
		} else {
			return null;
		}
	}

	public Long count(String hql) {
		return (Long) this.getCurrentSession().createQuery(hql).uniqueResult();
	}
	
	public Long count(String hql, Map<String, Object> params) {
		Query q = this.getCurrentSession().createQuery(hql);
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				q.setParameter(key, params.get(key));
			}
		}
		return (Long) q.uniqueResult();
	}
	

	public Integer executeHql(String hql) {
		return this.getCurrentSession().createQuery(hql).executeUpdate();
	}
	
	public Integer executeHql(String hql, Map<String, Object> params) {
		Query q = this.getCurrentSession().createQuery(hql);
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				q.setParameter(key, params.get(key));
			}
		}
		return q.executeUpdate();
	}
}
