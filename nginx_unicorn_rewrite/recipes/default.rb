# template "app.conf" do
# 	path '/home/ec2-user/test.conf'
# 	source 'app.conf.erb'
# 	owner 'root'
# 	group 'root'
# 	mode 0644
# end

file '/etc/nginx/sites-available/miniapps' do
	_file = Chef::Util::FileEdit.new(path)
	_file.search_file_replace(
		"  location /nginx_status {",
		<<EOS
  location ~* \.(gif|jpg|jpeg|png|css|js)$ {
    gzip_static on;
    expires 20d;
    add_header Cache-Control public;
    add_header Last-Modified "";
    add_header ETag "";
    access_log off;
  }
  location /nginx_status  {
EOS
	)
	content _file.send(:contents).join
end

#test
#test

