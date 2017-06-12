# Configuration of SonarQube Runner
class sonarqube::runner::config (
  $package_name,
  $version,
  $installroot,
  $sonarqube_server = 'http://localhost:9000',
) {
  # Sonar Runner configuration file
  file { "${installroot}/${package_name}-${version}/conf/sonar-runner.properties":
    content => template('sonarqube/sonar-runner.properties.erb'),
    require => Exec['unzip-sonar-runner'],
  }
}
