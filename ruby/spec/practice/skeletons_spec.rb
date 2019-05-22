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
end
