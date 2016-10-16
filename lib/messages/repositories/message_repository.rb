class MessageRepository
  include Hanami::Repository

  def self.find_by_url(url)
    query do
      where(url: url)
    end.first
  end
  
  def self.expired
    query do
      # reverse_order(:time_of_destroy).
      where { time_of_destroy <= Time.now }
    end.all
  end
end
