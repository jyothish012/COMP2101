get-wmiobject -class win32_logicaldisk |

? { $_.size -ne 0 -and $_.freespace -ne 0 } |

Format-Table -AutoSize DeviceID,

@{n="Size(GB)"; e={$_.size/1gb -as [int]}},

@{n="Free(GB)"; e={$_.freespace/1gb -as [int]}},

ProviderName