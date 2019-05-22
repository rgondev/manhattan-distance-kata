require "practice/point"
require "practice/distance"

RSpec.describe Practice::Skeletons do

  it 'distance between Point and itself is zero' do
    # Given:
    #   A point
    point = Practice::Point.new(x: 0, y: 0)
    # When
    #   Calculate distance between point and itself
    distance = Practice::Distance.manhattanDistance(point, point)
    # Then
    #   Distance is zero
    expect(distance).to eql(0)
  end

  it 'distance two points in the same row and different column' do
    # Given:
    #   A point
    point1 = Practice::Point.new(x: 0, y: 0)
    point2 = Practice::Point.new(x: 1, y: 0)
    # When
    #   Calculate distance between point and itself
    distance = Practice::Distance.manhattanDistance(point1, point2)
    # Then
    #   Distance is zero
    expect(distance).to eql(1)
  end


  it 'distance two points in the same row and previous column' do
    # Given:
    #   A point
    point1 = Practice::Point.new(x: 1, y: 0)
    point2 = Practice::Point.new(x: 0, y: 0)
    # When
    #   Calculate distance between point and itself
    distance = Practice::Distance.manhattanDistance(point1, point2)
    # Then
    #   Distance is zero
    expect(distance).to eql(1)
  end

end
