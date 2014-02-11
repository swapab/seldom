require 'spec_helper'

describe Seldom::Html do
  before do
    @seldom_h = described_class.new
  end

  describe '#initialize' do
    it 'should initialize with default options' do
      @options = @seldom_h.options
      expect(@options).not_to be_empty
      @options.should be_a(Hash)
      @options.fetch(:content_selector).should eq '#right-content'
      @options.fetch(:nav_selector).should eq '#nav'
    end
  end

  describe '#selector_to_html' do
    it 'form a default div tag' do
      @seldom_h.selector_to_html('#the-container').should include "<div id=the-container>"
    end

    it 'form a span tag' do
      @seldom_h.selector_to_html('#span-el', 'span').should include "<span id=span-el>"
    end
  end

  describe '#body' do
    it 'should generate an html tag with sample content' do
      @seldom_h.body.should include "<html><body><h1>Hello, World!</h1>"
    end
  end
end
