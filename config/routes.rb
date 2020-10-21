Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "sobre", to: 'pages#sobre', as: :"sobre" #about page
  get "politica-de-privacidade", to: 'pages#politicadeprivacidade', as: :"politica-de-privacidade" #politica-de-privacidade
  get "termos-de-uso", to: 'pages#termosdeuso', as: :"termos-de-uso" #termos-de-uso
  get "obrigado", to: 'pages#obrigado', as: :"muito-obrigado" #termos-de-uso
  get "curriculocampeao", to: 'pages#curriculocampeao', as: :"curriculo-campeao" #bonus 1

  #paginas de lançamentoo

  get "lan-inscricao", to: 'pages#lan_inscricao', as: :"lan-inscricao"
  get "lan-obrigado", to: 'pages#lan_obrigado', as: :"lan-obrigado"
  get "lan-live", to: 'pages#lan_live', as: :"lan-live"
  get "lan-confirmacao", to: 'pages#lan_confirmacao', as: :"lan-confirmacao"

  get "sua-ajuda", to: 'pages#sua_ajuda', as: :"sua-ajuda"

  get "inscricoes-encerradas", to: 'pages#inscricoes_encerradas', as: :"inscricoes-encerradas"


  #cursos
  get "novenovecv", to: 'pages#novenovecv', as: :"novenovecv"
  get "aprovando-em-entrevistas", to: 'pages#aprovando_em_entrevistas', as: :"aprovando-em-entrevistas"
  get "obrigado-waitlist", to: 'pages#obrigado_waitlist', as: :"obrigado-waitlist"

  #portaldevagas
  get "portal-de-vagas", to: 'pages#portal_de_vagas', as: :"portal_de_vagas"
  get "inscricoes-para-portal-encerradas", to: 'pages#inscricoes_para_portal_encerradas', as: :"inscricoes_para_portal_encerradas"

  get "lista-de-vagas", to: 'pages#lista_de_vagas', as: :"lista_de_vagas"

  #blog | dicas de entrevista
  get "dicas-de-entrevista", to: 'pages#dicas_de_entrevista', as: :"dicas-de-entrevista"



#POSTS---------------------------------------------------------------------------------------------

  get "transformacoes-que-atraves-da-beleza-sao-entregues-em-produtos-de-varios-formatos", to: 'blog#post0', as: :"transformacoes-que-atraves-da-beleza-sao-entregues-em-produtos-de-varios-formatos"  #POST 0
  get "o-futuro-do-salao-de-beleza", to: 'blog#post1', as: :"o-futuro-do-salao-de-beleza" #POST 1
  get "quais-os-pilares-de-um-bom-curriculo", to: 'blog#post2', as: :"quais-os-pilares-de-um-bom-curriculo" #POST 2
  get "as-5-perguntas-mais-comuns-em-entrevistas", to: 'blog#post3', as: :"as-5-perguntas-mais-comuns-em-entrevistas" #POST 3
  get "como-falar-sobre-qualidades-e-defeitos-em-uma-entrevista-de-trabalho", to: 'blog#post4', as: :"como-falar-sobre-qualidades-e-defeitos-em-uma-entrevista-de-trabalho" #POST 4
  get "como-escrever-seu-curriculo-sem-ter-experiencias-profissionais", to: 'blog#post5', as: :"como-escrever-seu-curriculo-sem-ter-experiencias-profissionais" #POST 5
  get "como-lidar-com-exigencias-absurdas-de-entrevistas-de-emprego", to: 'blog#post6', as: :"como-lidar-com-exigencias-absurdas-de-entrevistas-de-emprego" #POST 6
  get "como-foi-minha-primeira-entrevista-de-emprego", to: 'blog#post7', as: :"como-foi-minha-primeira-entrevista-de-emprego" #POST 7


#VAGAS---------------------------------------------------------------------------------------------

  get "vaga-598", to: 'vagas#vaga0', as: :"vaga1"  #vaga100 - 0
  get "vaga-333", to: 'vagas#vaga1', as: :"vaga2"  #vaga100 - 1
  get "vaga-294", to: 'vagas#vaga2', as: :"vaga3"  #vaga100 - 2
  get "vaga-128", to: 'vagas#vaga3', as: :"vaga4"  #vaga100 - 3
  get "vaga-403", to: 'vagas#vaga4', as: :"vaga5"  #vaga100 - 4
  get "vaga-733", to: 'vagas#vaga5', as: :"vaga6"  #vaga100 - 5




end
