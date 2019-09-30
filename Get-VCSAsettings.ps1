
$ntpTime = (Get-CisService -Name 'com.vmware.appliance.techpreview.ntp').get()
$hostname = (Get-CisService -Name 'com.vmware.appliance.networking.dns.hostname').get()
$Time = (Get-CisService -Name 'com.vmware.appliance.system.time').get()
$DNS = (Get-CisService -Name 'com.vmware.appliance.networking.dns.servers').get()
$Health = (Get-CisService 'com.vmware.appliance.health.system').get()
$SystemVersion = (Get-CisService -Name 'com.vmware.appliance.system.version').get()

write-host

write-host "HostName: " $hostname
Write-Host "Product: " $SystemVersion.summary
Write-Host "Type: " $SystemVersion.type
Write-Host "Version: " $SystemVersion.version
Write-Host "Build: " $SystemVersion.build
Write-Host "Install Time: " $SystemVersion.install_time
Write-Host "Overall Health: " $Health
write-host "NTP Servers: " $ntpTime.servers
write-host "NTP Status: " $ntpTime.status
write-host "TimeZone: " $time.timezone
Write-Host "Date: " $Time.date
write-host "Current Time: " $time.time
Write-Host "DNS Servers: " $DNS.servers
