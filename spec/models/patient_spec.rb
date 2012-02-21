require 'spec_helper'

describe Patient do
  it_behaves_like Iora::GUID do
    let(:known_guid_keys) { %w[ guid_d guid_e ] }
  end
end
