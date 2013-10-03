require 'spec_helper'
require_relative '../lib/geometry'


describe Geometry::Triangle do
  
  let(:a) { 3}
  let(:b) { 4}
  let(:c) { 5}

  subject { Geometry::Triangle.new(a, b, c) }

  its(:a) { should eq 3}
  its(:b) { should eq 4}
  its(:c) { should eq 5}

  its(:perimeter) { should eq 12}
  its(:area) { should eq 6}
  its(:angles) { should eq [0.64, 0.93, 1.57]}

end


describe Geometry::Rectangle do
  
  let(:length) { 4}
  let(:width) { 6}


  subject { Geometry::Rectangle.new(length, width) }

  its(:length) { should eq 4}
  its(:width) { should eq 6}

  its(:area) { should eq 24}
  its(:perimeter) { should eq 20}

end


describe Geometry::Circle do
  
  let(:radius) { 3}

  subject { Geometry::Circle.new(radius) }

  its(:radius) { should eq 3}

  its(:circumference) { should eq 6 * Math::PI}

  its(:area) { should eq 9 * Math::PI}

end



