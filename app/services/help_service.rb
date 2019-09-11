class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = 
      '<b>Comandos:</b>

      <code>help</code>
      <i>Lista de comandos que eu conheço</i>

      <code>Adicione ao Faq</code>
      <i>Adiciona uma nova questão ao Faq</i>

      <code>Remover ID</code>
      <i>Remove uma questão baseada no ID dela</i>

      <code>O que você sabe sobre X</code>
      <i>Pesquisa por palavra na lista de perguntas e respostas</i>

      <code>Pesquise a hashtag X</code>
      <i>Lista as perguntas e respostas com aquela hashtag</i>

      <code>Perguntas e Respostas</code>
      <i>Mostra a lista de perguntas e respostas</i>'

    response
  end

end
