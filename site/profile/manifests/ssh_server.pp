class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDslRmiYm8lJVAyyziomrJD6oS6aVNk//Y8mPwx2t68lzoeZ4i+n6PSQNCHtEE3J2urq2HdaEZOoIIjceqGvD1ks0AAhLQCZcFCDB+SgcH1HUGG79hXL9uHnQkFtBJi0s+ozxMsebuKPMjM6Y0iCLBP9U0B/m6d70dHLulMSQ5QOzXZg3sNxPYny+qMK3doxdgEXfLqza3t/VArGc0RsXNZP5d/Vbnc7MBF5LjcnJq1I8MU3U8Dbpi4TNgKnIaybMeMN6jPlEeInNdnNNz0QcbK/5cAxuLe8udoD1Psztb14R2LU2Nwkt1TY+SCmYZevcrcjToIWbzw0JJbgE9Vg6Y3',
	}  
}
