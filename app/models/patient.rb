require 'iora/guid'
class Patient < ActiveRecord::Base
  include Iora::GUID

  def self.guid_keys
    %w{guid_d guid_e}
  end
end
