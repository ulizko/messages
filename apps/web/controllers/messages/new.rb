module Web::Controllers::Messages
  class New
    include Web::Action
    
    expose :message

    def call(params)
      @message = Message.new
    end
  end
end
