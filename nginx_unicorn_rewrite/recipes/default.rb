template "app.conf" do
	path '/home/ec2-user/test.conf'
	source 'app.conf.erb'
	owner 'root'
	group 'root'
	mode 0644
end