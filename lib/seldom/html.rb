module Seldom
  class Html
    attr_reader :options

    def initialize(options={})
      @options = defaults.merge(options)
    end

  def body
    "<html><body><h1>Hello, World!</h1>
      <div>#{selector_to_html(options[:nav_selector])}</div>
      <span>#{Faker::Lorem.sentence}<span>
      <div>#{selector_to_html(options[:content_selector])}</div>
    </body></html>"
  end

  def selector_to_html(selector, tag='div')
    "<#{tag} id=#{selector.rpartition('#').pop}>#{::Faker::Lorem.sentence}</#{tag}>"
  end

    def defaults
      { content_selector: '#right-content',
        nav_selector:      '#nav'
      }
    end
  end
end
