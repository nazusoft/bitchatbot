class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = '*Meus comandos*    '

    response += '- help  '
    response += '_Lista de comandos que eu conheço_    '

    response += '- Adicione ao Faq  '
    response += '__Adiciona uma nova questão ao Faq__    '

    response += '- Remover ID  '
    response += '__Remove uma questão baseada no ID dela__    '

    response += '- O que você sabe sobre X  '
    response += '__Pesquisa por palavra na lista de perguntas e respostas__  '

    response += '- Pesquise a hashtag X  '
    response += '__Lista as perguntas e respostas com aquela hashtag__  '

    response += '- Perguntas e Respostas  '
    response += '__Mostra a lista de perguntas e respostas__  '

    response
  end

end
