require 'spec_helper'
require_relative '../lib/geometry'


describe Geometry::Triangle do
  
  let(:a) { 3}
  let(:b) { 4}
  let(:c) { 6}
  let(:perimeter) { 13}

  subject { Geometry::Triangle.new(a, b, c) }

  it "should have an area" do
    subject.area.should eq 0.0
  end

  # call a method named a on the subject
  its(:a) { should eq 3}
  its(:b) { should eq 4}

  its(:perimeter) { should eq 13}

  # same as above
  # it "should have a perimeter" do
  #   subject.perimeter.should eq perimeter
  # end

  # nested test
  describe "Another triangle" do
    subject { Geometry::Triangle.new(a, b, c) }
  end
end



