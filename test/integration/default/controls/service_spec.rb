# frozen_string_literal: true

control 'Proftpd service' do
  title 'should be running and enabled'

  describe service('proftpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(21) do
    it { should be_listening }
  end
end
