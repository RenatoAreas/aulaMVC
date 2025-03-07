package br.com.cotiinformatica.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.dto.FuncionarioCadastroDTO;
import br.com.cotiinformatica.dto.FuncionarioConsultaDTO;
import br.com.cotiinformatica.entities.Funcionario;
import br.com.cotiinformatica.enums.SituacaoFuncionario;
import br.com.cotiinformatica.helpers.DateHelper;
import br.com.cotiinformatica.repositories.FuncionarioRepository;

/*
 * Classe controladora do Spring MVC
 * Sua principal fun��o � gerenciar p�ginas JSP do projeto
 */
@Controller
public class FuncionarioController {
	
	@Autowired //inicializar automaticamente!
	private FuncionarioRepository funcionarioRepository;

	@RequestMapping("/funcionario-cadastro")
	public ModelAndView cadastro() {

		// instanciando o objeto ModelAndView e definindo o nome da p�gina
		// que ser� aberta por este m�todo..
		ModelAndView modelAndView = new ModelAndView("funcionario-cadastro");

		// enviando para a p�gina o DTO que far� a coleta dos dados
		modelAndView.addObject("dto", new FuncionarioCadastroDTO());

		return modelAndView; // segue para a p�gina
	}

	@RequestMapping(value = "cadastrarFuncionario", method = RequestMethod.POST)
	public ModelAndView cadastrarFuncionario(FuncionarioCadastroDTO dto) {
		
		ModelAndView modelAndView = new ModelAndView("funcionario-cadastro");
		
		try {
			
			String erros = "";
			
			//verificar se o cpf informado j� encontra-se cadastrado na base de dados..
			if(funcionarioRepository.findByCpf(dto.getCpf()) != null) {
				erros += "O CPF informado j� encontra-se cadastrado. ";
			}
			//verificar se a matricula informada j� encontra-se cadastrado na base de dados..
			if(funcionarioRepository.findByMatricula(dto.getMatricula()) != null) {
				erros += "A matr�cula informada j� encontra-se cadastrada. ";
			}
			
			if(erros != "")
				throw new Exception(erros);
				
			Funcionario funcionario = new Funcionario();
			
			funcionario.setNome(dto.getNome());
			funcionario.setCpf(dto.getCpf());
			funcionario.setMatricula(dto.getMatricula());
			funcionario.setDataAdmissao(DateHelper.toDate(dto.getDataadmissao()));
			funcionario.setSituacao(SituacaoFuncionario.valueOf(dto.getSituacao()));
			
			funcionarioRepository.create(funcionario);
			
			modelAndView.addObject("mensagem_sucesso", "Funcion�rio cadastrado com sucesso");
		}
		catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Ocorreu um erro: " + e.getMessage());
		}		

		// enviando para a p�gina o DTO que far� a coleta dos dados
		modelAndView.addObject("dto", new FuncionarioCadastroDTO());

		return modelAndView; // segue para a p�gina
	}

	@RequestMapping("/funcionario-consulta")
	public ModelAndView consulta() {
		
		ModelAndView modelAndView = new ModelAndView("funcionario-consulta");

		try {
			modelAndView.addObject("listagem_funcionarios", funcionarioRepository.findAll());			
		}
		catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Ocorreu um erro: " + e.getMessage());
		}
		
		modelAndView.addObject("dto", new FuncionarioConsultaDTO());
		return modelAndView;
	}
	
	@RequestMapping(value = "consultarFuncionarios", method = RequestMethod.POST)
	public ModelAndView consultarFuncionarios(FuncionarioConsultaDTO dto) {
		
		ModelAndView modelAndView = new ModelAndView("funcionario-consulta");

		try {
			
			//resgatar as datas de admiss�o..
			Date dataInicio = DateHelper.toDate(dto.getDataInicio());
			Date dataFim = DateHelper.toDate(dto.getDataFim());
			
			modelAndView.addObject("listagem_funcionarios", 
					funcionarioRepository.findByDataAdmissao(dataInicio, dataFim));			
		}
		catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Ocorreu um erro: " + e.getMessage());
		}
		
		modelAndView.addObject("dto", new FuncionarioConsultaDTO());
		return modelAndView;		
	}	
	
	@RequestMapping("excluirFuncionario")
	public ModelAndView excluirFuncionario(Integer id) {
		
		ModelAndView modelAndView = new ModelAndView("funcionario-consulta");

		try {
			
			//buscar o funcionario no banco de dados atraves do id..
			Funcionario funcionario = funcionarioRepository.findById(id);
			//excluir o funcion�rio..
			funcionarioRepository.delete(funcionario);
			
			modelAndView.addObject("mensagem_sucesso", "Funcion�rio exclu�do com sucesso.");			
			modelAndView.addObject("listagem_funcionarios", funcionarioRepository.findAll());			
		}
		catch(Exception e) {
			modelAndView.addObject("mensagem_erro", "Ocorreu um erro: " + e.getMessage());
		}
		
		modelAndView.addObject("dto", new FuncionarioConsultaDTO());
		return modelAndView;		
		
	}	

	@RequestMapping("/funcionario-relatorio")
	public String relatorio() {
		return "funcionario-relatorio";
	}
}
