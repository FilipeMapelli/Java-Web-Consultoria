package br.com.fms.consultoria.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import br.com.fms.consultoria.modelo.Orcamento;
import br.com.fms.consultoria.util.HibernateUtil;

@Repository
public class OrcamentoDao extends GenericDao<Orcamento>{
	
	@SuppressWarnings("unchecked")
	public List<Orcamento> listaOrcamentosPorUsuario(Long usuario_id){
		Session sessao = HibernateUtil.getFabricaDeSessoes().openSession();
		
		try{
			Criteria consulta = sessao.createCriteria(Orcamento.class);
			consulta.add(Restrictions.eq("usuario.id", usuario_id));
			List<Orcamento> resultado = consulta.list();
			for (Orcamento orcamento : resultado) {
				System.out.println(orcamento.getDescricao());
			}
			
			return resultado;
		}
		catch(RuntimeException erro){
			throw erro;
		}
		finally{
			sessao.close();
		}
	}
}
