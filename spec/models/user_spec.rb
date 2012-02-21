require 'spec_helper'

describe User do
  it_behaves_like Iora::GUID do
    let(:known_guid_keys) { %w[ guid_a guid_b guid_c ] }
  end
end
