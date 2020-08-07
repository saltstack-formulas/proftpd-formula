# frozen_string_literal: true

control 'Proftpd configuration' do
  title 'should match desired lines'

  config_file =
    case platform[:family]
    when 'debian', 'suse'
      '/etc/proftpd/proftpd.conf'
    when 'redhat', 'fedora'
      '/etc/proftpd.conf'
    end

  config_user =
    case platform[:family]
    when 'debian', 'redhat', 'fedora'
      'nobody'
    when 'suse'
      'ftp'
    end

  config_group =
    case platform[:family]
    when 'debian'
      'nogroup'
    when 'redhat', 'fedora'
      'nobody'
    when 'suse'
      'ftp'
    end

  describe file(config_file) do
    # rubocop:disable Layout/LineLength
    its('content') { should include 'ServerName                              SaltStack FTP Server' }
    its('content') { should include 'ServerType                              standalone' }
    its('content') { should include "User                                    #{config_user}" }
    its('content') { should include "Group                                   #{config_group}" }
    # rubocop:enable Layout/LineLength
  end
end
