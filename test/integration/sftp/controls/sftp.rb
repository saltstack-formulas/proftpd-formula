# frozen_string_literal: true

control 'SFTP configuration' do
  title 'should match desired lines'

  spec_config_file =
    case platform[:family]
    when 'debian', 'suse', 'linux'
      '/etc/proftpd/proftpd.conf'
    when 'redhat', 'fedora'
      '/etc/proftpd.conf'
    end

  describe file('/etc/proftpd/sftp.conf') do
    it { should be_file }
    its('content') { should include '## File managed by Salt' }
    its('content') { should include 'SFTPEngine' }
    its('content') { should include 'SFTPLog' }
    its('content') { should include 'SFTPOptions' }
    its('content') { should include 'SFTPHostKey' }
    its('content') { should include 'SFTPAuthMethods' }
    its('content') { should include 'SFTPAuthorizedUserKeys' }
    its('content') { should include 'Port 4000' }
    its('content') { should include 'SFTPCompression delayed' }
  end

  describe file(spec_config_file) do
    it { should be_file }
    its('content') { should include 'Include /etc/proftpd/sftp.conf' }
  end

  describe file('/etc/proftpd/modules.conf') do
    it { should be_file }
    its('content') { should include '## File managed by Salt' }
    its('content') { should include 'LoadModule mod_sftp.c' }
  end

  describe service('proftpd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(4000) do
    it { should be_listening }
  end
end
