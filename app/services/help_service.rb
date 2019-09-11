class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = <<~EOF
      <b>### Comandos ###</b>

      <b><code>help</code></b>
      <i>Lista de comandos que eu conheço</i>

      <b><code>Adicione ao Faq</code></b>
      <i>Adiciona uma nova questão ao Faq</i>

      <b><code>Remover ID</code></b>
      <i>Remove uma questão baseada no ID dela</i>

      <b><code>O que você sabe sobre X</code></b>
      <i>Pesquisa por palavra na lista de perguntas e respostas</i>

      <b><code>Pesquise a hashtag X</code></b>
      <i>Lista as perguntas e respostas com aquela hashtag</i>

      <b><code>Perguntas e Respostas</code></b>
      <i>Mostra a lista de perguntas e respostas</i>
      EOF

    response
  end

end
