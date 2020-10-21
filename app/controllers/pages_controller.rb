class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @posts = posts_all.to_h
    #@firstpost = @posts["ultimo"]
    @secondposts = @posts

    @vagas = vagas_all.to_h
      @vaga1 = @vagas["vaga0"]
      @vaga2 = @vagas["vaga1"]
      @vaga3 = @vagas["vaga2"]
  end

  def sobre
  end

  def obrigado
    redirect_to(root_path)
  end

  def curriculocampeao
    redirect_to(root_path)
  end

  def termosdeuso
    redirect_to(root_path)
  end

  def politicadeprivacidade
    redirect_to(root_path)
  end

  def lan_inscricao
    #redirect_to(root_path)
  end

  def lan_obrigado
    #redirect_to(root_path)
  end

  def lan_live
    redirect_to(root_path)
    #https://pay.hotmart.com/thanks?bid=1582468627395
  end

  def lan_confirmacao
    #redirect_to(root_path)
  end

  def sua_ajuda
    redirect_to(root_path)
    #redirect_to(lan_inscricao_path)
  end

  def inscricoes_encerradas

  end

  #PORTAL DE VAGAS
  def portal_de_vagas
    redirect_to(root_path)
    @position = rand(100..1000)
    @type = ["Trainee", "Analista", "Coordenador", "Gerente", "Estágio"]
    @local = ["Empresa nacional", "Empresa multinacional"]
    @area = ["Tecnologia", "Vendas", "Logística", "Varejo", "Finanças", "Investimentos", "Abastecimento"]

    @vagas = vagas_all.to_h
      @vaga1 = @vagas["vaga0"]
      @vaga2 = @vagas["vaga1"]
      @vaga3 = @vagas["vaga2"]
  end

  #LISTA DE VAGAS
  def lista_de_vagas
    redirect_to(root_path)

  end


  def inscricoes_para_portal_encerradas
    redirect_to(root_path)

  end


#Cursos

  def novenovecv
    redirect_to(inscricoes_encerradas_path)
  end

  def aprovando_em_entrevistas
    redirect_to(inscricoes_encerradas_path)
  end

  def obrigado_waitlist
    redirect_to(inscricoes_encerradas_path)
  end


#blog | dicas de entrevista

def dicas_de_entrevista
  @posts = posts_all.to_h
  #@firstpost = @posts["ultimo"]
  @secondposts = @posts

end



  private

    def posts_all
      file = "config/post.yml"
      posts_all = YAML.load(open(file).read)
      posts_all = posts_all.reverse_each.to_h
    end

    def vagas_all
      file_vagas = "config/vagas.yml"
      vagas_all = YAML.load(open(file_vagas).read)
      vagas_all = vagas_all.to_h
      #vagasYAML = YAML.load(ERB.new(File.read("config/vagas.yml")).result(binding))
      #vagas_all = vagasYAML.collect { |k, v| v }
      #posts_all = posts_all.reverse
    end

end
