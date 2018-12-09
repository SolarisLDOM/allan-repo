describe powercli_command('Get-VMHostNtpServer') do
      its('exit_status') { should cmp 0 }
      end


      tsm_ssh_cmd = 'Get-VMhost | Get-VMHostService | Where {$_.Key -eq "TSM-SSH" -and $_.Running -eq $False}'
  describe powercli_command(tsm_ssh_cmd) do
    its('exit_status') { should cmp 0 }
    its('stdout') { should_not be_empty }
  end
end


script = <<-EOH
Get-VMHostNtpServer
EOH

script = <<-EOH
Get-
EOH

describe powershell(script) do
      its('exit_status') { should cmp 0}
end

describe powercli_command(script) do
      its('exit_status') { should cmp 0}
end