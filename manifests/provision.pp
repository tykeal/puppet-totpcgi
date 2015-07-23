
define totpcgi::provision::manual (
  $encoded_secret,
  $tokens,
) {

  file { "${totpcgi::secrets_dir}/${name}.totp":
    ensure  => file,
    owner   => $totpcgi::provisioning_owner,
    group   => $totpcgi::totpcgi_group,
    mode    => '0440',
    content => template('totpcgi/secrets.totp.erb')
  }
}