require 'spec_helper'
describe 'teste' do

  context 'with defaults for all parameters' do
    it { should contain_class('teste') }
  end
end
