# FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2022

# SHELL ["cmd", "/C"]
# RUN powershell -Command Set-ExecutionPolicy unrestricted
# RUN powershell -Command Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

FROM unityci/editor:windows-2022.3.5f1-webgl-3.0.1

RUN choco install ruby --no-progress -y
