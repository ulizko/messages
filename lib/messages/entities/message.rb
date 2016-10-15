class Message
  include Hanami::Entity

  attributes :id, :text, :url, :time_of_destroy, :visits_limit, :visits_count, :hours_to_destroy

  def url
    @url ||= SecureRandom.hex(8)
  end

  def time_of_destroy
    unless hours_to_destroy.nil?
      @time_of_destroy ||= Time.now + hours_to_destroy.hours
    end
  end

  def viewed?
    visits_count == visits_limit
  end

  def destroyed?
    text.blank?
  end
end
