class VagasController < ApplicationController
  skip_before_action :authenticate_user!


  def vaga0
    @vaga = vagas_all[0]
  end

  def vaga1
    @vaga = vagas_all[1]
  end

  def vaga2
    @vaga = vagas_all[2]
  end

  def vaga3
     @vaga = vagas_all[3]
  end

  def vaga4
     @vaga = vagas_all[4]
  end

  def vaga5
     @vaga = vagas_all[5]
  end




private

def vagas_all
  vagasYAML = YAML.load(ERB.new(File.read("config/vagas.yml")).result(binding))
  vagas_all = vagasYAML.collect { |k, v| v }
  #posts_all = posts_all.reverse
end



end
