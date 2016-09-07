package br.com.fms.consultoria.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import br.com.fms.consultoria.modelo.Usuario;
import br.com.fms.consultoria.security.CryptoSecurityAES;
import br.com.fms.consultoria.util.HibernateUtil;

@Repository
public class UsuarioDao extends GenericDao<Usuario>{
	
	public Usuario verificaUsuario(Usuario usuario){
		
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		try{	
			CryptoSecurityAES crypt = new CryptoSecurityAES();
			String senha = null;
			
			Criteria consulta = sessao.createCriteria(Usuario.class);
			Usuario user = (Usuario) consulta.add(Restrictions
					.eq("email", usuario.getEmail()))
					.uniqueResult();
			try {
				if (user!= null){
					senha = crypt.decrypt(user.getSenha(), crypt.getKeyEncryption());
				}
			} catch (Exception e) {
				throw new RuntimeException("Erro ao descriptografar senha: ",e);
			}
			
			if (usuario.getSenhaNaoCriptografada().equals(senha)){
				return user;
			}else{
				return null;
			}
		}
		catch(RuntimeException erro){
			throw erro;
		}
		finally{
			sessao.close();
		}
	}
		
}
