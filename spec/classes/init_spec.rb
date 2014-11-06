require 'spec_helper'
describe 'module_skeleton' do

  context 'with defaults for all parameters' do
    it { should contain_class('module_skeleton') }
  end
end
