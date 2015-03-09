node 'kalletabur2' 'kalletabur3' {
	file { '/tmp/hello':
		content => "Hello world \n",
	}
}
