class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = 
      '<b>Comandos:</b></br></br>

      - help</br>
      <i>Lista de comandos que eu conheço</i></br></br>

      - Adicione ao Faq</br>
      <i>Adiciona uma nova questão ao Faq</i></br></br>

      - Remover ID</br>
      <i>Remove uma questão baseada no ID dela</i></br></br>

      - O que você sabe sobre X</br>
      <i>Pesquisa por palavra na lista de perguntas e respostas</i></br></br>

      - Pesquise a hashtag X</br>
      <i>Lista as perguntas e respostas com aquela hashtag</i></br></br>

      - Perguntas e Respostas</br>
      <i>Mostra a lista de perguntas e respostas</i></br></br>'

    response
  end

end
