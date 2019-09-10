class HelpService

  # quando utiliza 'self' antes do nome do método, não precisa utilizar 'new'
  def self.perform
    response  = '*Meus comandos*    
      - help  
      _Lista de comandos que eu conheço_    
      - Adicione ao Faq  
      _Adiciona uma nova questão ao Faq_    
      - Remover ID  
      _Remove uma questão baseada no ID dela_    
      - O que você sabe sobre X  
      _Pesquisa por palavra na lista de perguntas e respostas_  
      - Pesquise a hashtag X  
      _Lista as perguntas e respostas com aquela hashtag_  
      - Perguntas e Respostas  
      _Mostra a lista de perguntas e respostas_  '

    response
  end

end
