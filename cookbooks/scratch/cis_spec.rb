
title 'CIS Benchmark for VMware 6.5 Inspec Profile'

control 'Image Profile VIB acceptance level is configured properly' do
  impact 1.0                              
  title '1.2 (L1) Ensure the Image Profile VIB acceptance level is configured properly (Scored)'
  desc 'A VIB (vSphere Installation Bundle) is a collection of files that are packaged into an archive. The VIB contains a signature file that is used to verify the level of trust. The ESXi Image Profile supports four VIB acceptance levels:
  1. VMware Certified - VIBs created, tested, and signed by VMware
  2. VMware Accepted - VIBs created by a VMware partner but tested and signed by VMware
  3. Partner Supported - VIBs created, tested, and signed by a certified VMware partner
  4. Community Supported - VIBs that have not been tested by VMware or a VMware partner
  Rationale: The ESXi Image Profile should only allow signed VIBs because an unsigned VIB represents untested code installed on an ESXi host. Also, use of unsigned VIBs will cause hypervisor Secure Boot to fail to configure. Community Supported VIBs do not have digital signatures. To protect the security and integrity of your ESXi hosts, do not allow unsigned (CommunitySupported) VIBs to be installed on your hosts.'

  cmd='$ESXCli = Get-EsxCli -VMHost $VMHost; $ESXCli = Get-EsxCli -VMHost $VMHost;$ESXCli.software.vib.list() | Where { ($_.AcceptanceLevel -eq "VMwareCertified") -or ($_.AcceptanceLevel -eq "VMwareAccepted") -or ($_.AcceptanceLevel -eq "PartnerSupported") }'
  describe powercli_command(cmd) do
    its('exit_status') { should cmp 0 }
  end
end
