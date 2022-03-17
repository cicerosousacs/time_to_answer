module SiteHelper

  def msg_jumbotron
    case params[:action]
    when 'index'
      "Ùltimas perguntas cadastradas..."
    when 'questions'
      "Resultado encontrado para \"#{params[:term]}\"..."
    when 'subject'
      "Mostrando questôes para o assunto \"#{params[:subject]}\"..."
    end
  end

end
