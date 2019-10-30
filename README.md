# vCenter / ESXi API Simulator

This package implements a vSphere Web Services (SOAP) SDK endpoint intended for testing consumers of the API.

## Starting the simulator

The simulator can simulate either a vCenter server (default) or an ESXi server.


### Run simulator as a vCenter server

Start with default settings as a vCenter server 

	docker run -d -p 8989:8989 macropower/vcsim

or

	docker run -d -p 8989:8989 macropower/vcsim -vcenter

### Run simulator as a ESXi server

Start with default settings as a ESXi server

	docker run -d -p 8989:8989 macropower/vcsim -esxi

### Credit

Based on works by m451 and nimmis.
