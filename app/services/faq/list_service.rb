module FaqModule
  class ListService

    def initialize(params, action)
      @action = action
      @query  = params['query']
    end

    def perform
      if @action == 'search'
        faqs = Faq.search(@query)
      elsif @action == 'search_by_hashtag'
        faqs = []; Faq.all.each do |faq|
          faq.hashtags.each do |hashtag|
            faqs << faq if hashtag.name == @query
          end
        end
      else
        faqs = Faq.all
      end

      response = '<b>Perguntas e Respostas</b> </br></br>'
      faqs.each do |f|
        response += "<b>id:#{f.id}</b></br>"
        response += "P: <b>#{f.question}</b></br>"
        response += "R: #{f.answer}</br></br>"

        response += f.hashtags.map{|x| x.prepend('#') }.join(', ')

        response += "</br></br>"
      end

      (faqs.count > 0)? response : 'Nada encontrado'
    end

  end
end
