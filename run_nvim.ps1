# 定义一个名为path的参数，必须是一个有效的文件夹路径
param (
  [Parameter(Mandatory = $true)]
  [ValidateScript( {Test-Path -Path $_ -PathType Container} )]
  [string]$path
)

# 转到指定的路径
Set-Location $path

# 运行nvim
nvim
