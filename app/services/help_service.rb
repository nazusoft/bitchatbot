class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = 
      '<b>Comandos:</b></br></br>

      <code>help</code>
      <i>Lista de comandos que eu conheço</i></br></br>

      <code>Adicione ao Faq</code>
      <i>Adiciona uma nova questão ao Faq</i></br></br>

      <code>Remover ID</code>
      <i>Remove uma questão baseada no ID dela</i></br></br>

      <code>O que você sabe sobre X</code>
      <i>Pesquisa por palavra na lista de perguntas e respostas</i></br></br>

      <code>Pesquise a hashtag X</code>
      <i>Lista as perguntas e respostas com aquela hashtag</i></br></br>

      <code>Perguntas e Respostas</code>
      <i>Mostra a lista de perguntas e respostas</i></br></br>'

    response
  end

end
