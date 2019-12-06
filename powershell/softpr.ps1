get-wmiobject -class win32_product -filter "vendor!= 'Microsoft Corporation'" |

select-object Name ,Vendor ,Version, InstallDate |

sort-object InstallDate