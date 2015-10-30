Facter.add('tag') do
	setcode do
		hostname_tmp = %x{'hostname'}
		hostname = hostname_tmp.split('.')[0]
		tag = hostname.gsub(/h\d+/,'').gsub(/ceal/,'')
		tag
	end
end
