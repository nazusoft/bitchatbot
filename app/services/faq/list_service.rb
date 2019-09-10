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

      response = '**Perguntas e Respostas**\n\n'
      faqs.each do |f|
        response += "**id:#{f.id}**\n"
        response += "P: __#{f.question}__\n"
        response += "R: #{f.answer}\n\n"

        response += f.hashtags.map{|x| x.prepend('#') }.join(', ')

        response += "\n\n"
      end

      (faqs.count > 0)? response : 'Nada encontrado'
    end

  end
end
