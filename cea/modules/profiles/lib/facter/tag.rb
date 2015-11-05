Facter.add('tag') do
	setcode do
		case osfamily
		when "Suse"
			hostname_tmp = %x{'hostname --fqdn'}
		when "Redhat"
			hostname_tmp = %x{'hostname'}
		end
		hostname = hostname_tmp.split('.')[0]
		tag = hostname.gsub(/h\d+/,'').gsub(/ceal/,'')
		tag
	end
end
