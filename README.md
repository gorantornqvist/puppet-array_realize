# puppet-array_realize

Pass an array of virtual resources to the realize parameter and it will be realized, nothing more, nothing less.

This is useful when you define all your users or ssh keys as virtual resources in puppet modules and want to use an ENC like foreman to control where the virtual resources are defined.

Example

---
classes:
  array_realize:
    realize:
      - File['/tmp/myfile']
      - Ssh_authorized_key['root_key']
      - Mymodule::Mycustomdefinedtype['something']
