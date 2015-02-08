#น.ส.รุจิรางค์ ไวยดารา 5510613275
#นายธนกร เหลืองขจรวิทย์ 5510613309

RSpec.configure do |config|
  # ...
  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end