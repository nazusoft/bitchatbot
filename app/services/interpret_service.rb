class InterpretService

  def self.perform(action, params)
    case action
    when 'list', 'search', 'search_by_hashtag'
      FaqModule::ListService.new(params, action).perform()
    when 'create'
      FaqModule::CreateService.new(params).perform()
    when 'remove'
      FaqModule::RemoveService.new(params).perform()
    when 'help'
      HelpService.perform()
    else
      'Não compreendi o seu desejo'
    end
  end

end
