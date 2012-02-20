require 'spec_helper'

describe User do
  let(:known_guid_keys) { %w[ guid_a guid_b guid_c ] }
  describe User, "before create" do
    before do
      subject.stubs(generate_unique_id: "xxx-yyy")
      subject.save
    end

    it "sets all known GUIDs" do
      known_guid_keys.map { |k| subject.send(k) }.should == [ "xxx-yyy" ] * known_guid_keys.size
    end
  end
end
