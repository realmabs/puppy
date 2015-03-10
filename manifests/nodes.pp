#node 'kalletabur2', 'kalletabur3' {
#	file { '/tmp/hello':
#		content => "Hello world \n",
#	}
#}

node 'kalletabur2' {
   include puppet
}
