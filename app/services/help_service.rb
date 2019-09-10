class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = '*Meus comandos*<br /><br />'

    response += '- help<br /><br />'
    response += '__Lista de comandos que eu conheço__<br /><br />'

    response += '- Adicione ao Faq<br />'
    response += '__Adiciona uma nova questão ao Faq__<br /></br />'

    response += '- Remover ID<br />'
    response += '__Remove uma questão baseada no ID dela__<br /><br />'

    response += '- O que você sabe sobre X<br />'
    response += '__Pesquisa por palavra na lista de perguntas e respostas__<br /><br />'

    response += '- Pesquise a hashtag X<br />'
    response += '__Lista as perguntas e respostas com aquela hashtag__<br /></br />'

    response += '- Perguntas e Respostas<br />'
    response += '__Mostra a lista de perguntas e respostas__<br /></br />'

    response
  end

end
