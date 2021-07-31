 ./b2 -d2 \
	cxxflags="-std=c++11 -MD -I%p/include" \
	--prefix=%p \
	--includedir=%p/opt/boost-1_%type_pkg[boost]/include/boost \
	--compatibility_version=1.%type_pkg[boost].0 \
	--current_version=1.%type_pkg[boost].0 \
	--build-type=complete \
	--layout=tagged \
	variant=release \
	threading=single,multi \
	link=shared



./b2 cxxflags="-std=c++14" install