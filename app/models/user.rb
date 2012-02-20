class User < ActiveRecord::Base
  before_create :generate_guids

  def generate_guids
    User.guid_keys.each do |key|
      guid = generate_unique_id
      self.send(key+"=", guid)
    end
  end

  def self.guid_keys
    %w{guid_a guid_b guid_c}
  end

  private

  def generate_unique_id
    Digest::MD5.hexdigest(Time.now.to_f.to_s + rand.to_s)
  end
end
