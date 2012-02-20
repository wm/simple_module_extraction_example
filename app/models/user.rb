require 'iora/guid'
class User < ActiveRecord::Base
  include Iora::GUID

  def self.guid_keys
    %w{guid_a guid_b guid_c}
  end
end
