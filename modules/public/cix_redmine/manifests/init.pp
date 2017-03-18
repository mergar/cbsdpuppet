class cix_redmine(
	$redmine_db = "redmine_db",
	$redmine_db_user = "redmine_user",
	$redmine_db_password = "redmine_password",
) {

	file { "/usr/local/www/redmine/config/database.yml":
		mode => '0444',
		ensure  => present,
		content => template("${module_name}/database.yml.erb"),
		owner => "www",
#		notify  => Exec["create_initenv"],
#		require => File["$workdir/cbsd.conf"],
	}

}
