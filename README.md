# puppet-array_realize

Pass an array or hash of virtual resources to the realize parameter and it will be realized, nothing more, nothing less.

This is useful when you define resources like users or ssh keys as virtual resources in puppet modules and want to use an ENC like foreman to control where the resources are defined, like certain hostgroups or hosts. The hiera_array parameter also takes all parameters defined in hiera and performs an array merge using hiera_array() function.

---

Examples
```
class { 'array_realize':
  realize => [
    File['/tmp/myfile'],
    Ssh_authorized_key['root_key'],
    Mymodule::Mycustomdefinedtype['something']
  ]
}
```
Hash: 
``` 
array_realize: 
  realize: 
    File[/tmp/myfile]:
    Ssh_authorized_key[root_key]:
    Mymodule::Mycustomdefinedtype[something]:
```
Hiera: 
``` 
array_realize::hiera_array: 
 - File[/tmp/myfile]
 - Ssh_authorized_key[root_key]
 - Mymodule::Mycustomdefinedtype[something]
```
