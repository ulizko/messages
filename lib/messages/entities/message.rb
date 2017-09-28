require 'core_ext/integer'

class Message < Hanami::Entity

  def initialize(attributes = {})
    super(
      {
        url: url_hash,
        time_of_destroy: attributes[:hours_to_destroy].nil? ? nil : Time.now + attributes[:hours_to_destroy].hours
      }.merge(attributes)
    )
  end

  def url_hash
    SecureRandom.hex(8)
  end

  def viewed?
    visits_count == visits_limit
  end
end
