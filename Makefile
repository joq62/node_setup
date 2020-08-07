all:
	rm -rf include configs *_service  erl_crasch.dump;
#	include
	git clone https://github.com/joq62/include.git;
#	config_service
	git clone https://github.com/joq62/config_service.git;	
	cp config_service/src/*.app config_service/ebin;
	erlc -I include -o config_service/ebin config_service/src/*.erl;
#	log_service
	git clone https://github.com/joq62/log_service.git;	
	cp log_service/src/*.app log_service/ebin;
	erlc -I include -o log_service/ebin log_service/src/*.erl;
#	sd_service
	git clone https://github.com/joq62/service_discovery_service.git;	
	cp service_discovery_service/src/*.app service_discovery_service/ebin;
	erlc -I include -o service_discovery_service/ebin service_discovery_service/src/*.erl;
#	vm_service
	git clone https://github.com/joq62/vm_service.git;	
	cp vm_service/src/*.app vm_service/ebin;
	erlc -I include -o vm_service/ebin vm_service/src/*.erl;
	erl -pa */ebin -config change_name.config -s vm_service boot -sname node_name
clean:
	rm -rf node_setup;
	git clone https://github.com/joq62/configs.git
