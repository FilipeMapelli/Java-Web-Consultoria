package br.com.fms.consultoria.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import br.com.fms.consultoria.modelo.Usuario;
import br.com.fms.consultoria.util.HibernateUtil;

@Repository
public class UsuarioDao extends GenericDao<Usuario>{
	
	public Usuario verificaUsuario(Usuario usuario){
		
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		try{
			Criteria consulta = sessao.createCriteria(Usuario.class);
			return (Usuario) consulta.add(Restrictions.eq("email", usuario.getEmail()))
						.add(Restrictions.eq("senha", usuario.getSenha()))
							.uniqueResult();
		}
		catch(RuntimeException erro){
			throw erro;
		}
		finally{
			sessao.close();
		}
	}
	
	
	public Usuario buscarPorEmail(String email){
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		try{
			Criteria consulta = sessao.createCriteria(Usuario.class);
		return	(Usuario) consulta.add(Restrictions.ilike("email", email, MatchMode.EXACT));
		
		}
		catch(RuntimeException erro){
			throw erro;
		}
		finally{
			sessao.close();
		}
	}
}
