class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = '<b>Meus comandos</b></br></br>'

    response += '- help</br>'
    response += '<i>Lista de comandos.</i></br></br>'

    response += '- Adicione ao Faq</br>'
    response += '<i>Adiciona uma nova questão ao Faq.</i></br></br>'

    response += '- Remova ID</br>'
    response += '<i>Remove uma questão baseada no ID.</i></br></br>'

    response += '- O que você sabe sobre X</br>'
    response += '<i>Pesquisa por palavra na lista de perguntas e respostas</i></br></br></br>'

    response += '- Pesquise a hashtag X</br>'
    response += '<i>Lista as perguntas e respostas com aquela hashtag</i></br></br>'

    response += '- Perguntas e Respostas</br>'
    response += '<i>Mostra a lista de perguntas e respostas</i></br></br>'

    response
  end

end
