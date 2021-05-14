package br.com.cotiinformatica.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * Classe controladora do Spring MVC
 * Sua principal função é gerenciar páginas JSP do projeto
 */
@Controller
public class FuncionarioController {

	@RequestMapping("/funcionario-cadastro")
	public String cadastro() {
		return "funcionario-cadastro";
	}

	@RequestMapping("/funcionario-consulta")
	public String consulta() {
		return "funcionario-consulta";
	}

	@RequestMapping("/funcionario-relatorio")
	public String relatorio() {
		return "funcionario-relatorio";
	}
}
