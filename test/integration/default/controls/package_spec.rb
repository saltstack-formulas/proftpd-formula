# frozen_string_literal: true

control 'Proftpd package' do
  title 'should be installed'

  package =
    case platform[:family]
    when 'debian'
      'proftpd-basic'
    when 'redhat', 'fedora', 'suse'
      'proftpd'
    end

  describe package(package) do
    it { should be_installed }
  end
end
