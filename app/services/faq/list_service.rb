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

      per_res = faqs.map do |f|
        response = <<~EOF
          <b>id:#{f.id}</b>
          P: #{f.question}
          R: #{f.answer}
          hashtags: #{f.hashtags.map{|x| x.name.prepend('#') }.join(', ')}
        EOF

        response
      end

      response = <<~EOF
        <b>### Perguntas e Respostas ###</b>

        #{per_res}
      EOF

      if (faqs.count > 0)
        response
      else
        'Nada encontrado'
      end
    end

  end
end
