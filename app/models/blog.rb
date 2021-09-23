class Blog < ApplicationRecord
  enum state: { draft: 0, published: 1, publish_wait: 2}
end
