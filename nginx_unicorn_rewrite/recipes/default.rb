template "app.conf" do
	path '~/test.conf'
	source 'app.conf.erb'
	owner 'root'
	group 'root'
	mode 0644
end