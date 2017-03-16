class array_realize(
  $realize = [],
  $hiera_array = []
) {
  realize(any2array($realize))

  $hiera_realize = hiera_array('array_realize::hiera_array', $hiera_array)
  realize($hiera_realize)
}
