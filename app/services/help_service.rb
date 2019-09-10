class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = '*Meus comandos*  \n  \n'

    response += '- help  \n'
    response += '_Lista de comandos que eu conheço_  \n  \n'

    response += '- Adicione ao Faq  \n'
    response += '__Adiciona uma nova questão ao Faq__  \n  \n'

    response += '- Remover ID  \n'
    response += '__Remove uma questão baseada no ID dela__  \n  \n'

    response += '- O que você sabe sobre X  \n'
    response += '__Pesquisa por palavra na lista de perguntas e respostas__  \n'

    response += '- Pesquise a hashtag X  \n'
    response += '__Lista as perguntas e respostas com aquela hashtag__  \n'

    response += '- Perguntas e Respostas  \n'
    response += '__Mostra a lista de perguntas e respostas__  \n'

    response
  end

end
