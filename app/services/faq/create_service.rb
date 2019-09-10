module FaqModule
  class CreateService

    def initialize(params)
      @question = params['question']
      @answer   = params['answer']
      @hashtags = params['hashtags']
    end

    def perform
      return 'Hashtag é obrigatório' if @hashtags.nil?

      Faq.transaction do
        faq = Faq.create(question: @question, answer: @answer)

        @hashtags.split(/[\s,]+/).each do |hashtag|
          faq.hashtags << Hashtag.find_or_create_by(name: hashtag)
        end
      end

      'Criado com sucesso'
    end

  end
end
