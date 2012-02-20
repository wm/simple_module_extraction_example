module Iora
  module GUID
    extend ActiveSupport::Concern

    included do
      before_create :generate_guids
    end

    def generate_guids
      self.class.guid_keys.each do |key|
        guid = generate_unique_id
        self.send(key+"=", guid)
      end
    end

    def generate_unique_id
      Digest::MD5.hexdigest(Time.now.to_f.to_s + rand.to_s)
    end
  end
end
