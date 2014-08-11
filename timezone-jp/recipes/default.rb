sudo "mv /etc/localtime /etc/localtime.#{Time.now.to_i}"	
sudo "ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime"