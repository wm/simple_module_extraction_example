require 'spec_helper'

describe Iora::GUID do
  describe Iora::GUID, "before create" do
    subject { User.new }
    before do
      subject.stubs(generate_unique_id: "xxx-yyy")
      subject.save
    end

    it "sets all known GUIDs" do
      known_guid_keys.map { |k| subject.send(k) }.should == [ "xxx-yyy" ] * known_guid_keys.size
    end
  end
end

