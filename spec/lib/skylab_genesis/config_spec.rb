require File.expand_path('../../../lib/skylab_genesis.rb', __dir__)

RSpec.describe SkylabGenesis::Config do
  before(:each) do
    @config = SkylabGenesis::Config.new
  end

  subject { @config }

  it { should respond_to(:api_key) }
  it { should respond_to(:api_version) }
  it { should respond_to(:client_stub) }
  it { should respond_to(:debug) }
  it { should respond_to(:host) }
  it { should respond_to(:port) }
  it { should respond_to(:protocol) }
  it { should respond_to(:url) }

  describe '#defaults' do
    it 'return the proper default config' do
      SkylabGenesis::Config.defaults.empty?.should eq(false)
      SkylabGenesis::Config.defaults[:protocol].should eq('https')
    end
  end

  describe '#initialize' do
    it 'return override default config' do
      SkylabGenesis::Config.new(protocol: 'proto').protocol.should eq('proto')
    end
  end
end