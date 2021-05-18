# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Foo, type: :model do
  it 'works' do
  end

  describe '#what' do
    it 'works' do
      foo = Foo.new
      foo.what
    end
  end

  describe '#what_two' do
    it 'works' do
      foo = Foo.new
      foo.what_two
    end
  end
end
