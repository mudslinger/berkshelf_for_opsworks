# template "app.conf" do
# 	path '/home/ec2-user/test.conf'
# 	source 'app.conf.erb'
# 	owner 'root'
# 	group 'root'
# 	mode 0644
# end

file '/etc/nginx/sites-available/miniapps' do
	_file = Chef::Util::FileEdit.new(path)
	_file.search_file_replace('listen   443;', "listen   443 ssl spdy;")
	content _file.send(:editor).lines.join
end
