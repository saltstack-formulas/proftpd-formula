# frozen_string_literal: true

control 'Module configuration' do
  title 'should match desired lines'

  describe file('/etc/proftpd/modules.conf') do
    it { should be_file }
    its('content') { should include '# File managed by Salt at' }
    its('content') { should include 'mod_ctrls_admin' }
    its('content') { should match(/mod_quotatab.c\nLoadModule mod_quotatab_file/) }
  end
end
