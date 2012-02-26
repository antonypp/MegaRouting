require 'test_helper'

class MatchTest < MiniTest::Unit::TestCase
  def setup
    @r = MegaRouting.build do
      match '/post/:id' => 'posts#show', :as => :post
      match '/article/:id' => 'article#show', :as => :article
    end
  end

  def test_url_helpers
    assert true
    assert @r.url_helpers.post_path(1) == '/post/1'
    assert @r.url_helpers.article_path(24) == '/article/24'
  end

  def test_find_route_by_url
    route = @r.find_route_by_url("/post/1")
    assert_equal '/post/1', route.build_url(1)
  end
end
