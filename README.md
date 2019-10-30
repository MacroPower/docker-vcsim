# vCenter / ESXi API Simulator

This package implements a vSphere Web Services (SOAP) SDK endpoint intended for testing consumers of the API.

## Starting the simulator

The simulator can simulate either a vCenter server (default) or an ESXi server.


### Run simulator as a vCenter server

Start with default settings as a vCenter server 

	docker run -d -p 8989:8989 macropower/vcsim

or

	docker run -d -p 8989:8989 macropower/vcsim --vcenter

### Run simulator as a ESXi server

Start with default settings as a ESXi server

	docker run -d -p 8989:8989 macropower/vcsim --esxi

## Options

	-E, --esxi                      Simulate ESXi host
	-V, --vcenter                   Simulate vCenter host (default)
	-a, -apps (num)                 Number of virtual apps per compute resource
	-c, --clusters (num)            Number of clusters (default 1) 
	--dc, --data-centers (num)      Number of datacenters (default 1)
	--ds, --data-stores (num)       Number of local datastores (default 1)
	-f, --folders (num)             Number of folders
	--hosts (num)                   Number of hosts per cluster (default 3)
	--pg, --port-groups (num)       Number of port groups (default 1)
	--pod, --storage-pods (num)     Number of storage pods per datacenter
	--pool, --resource-pools (num)  Number of resource pools per compute resource
	--sh, --standalone-host (num)   Number of standalone hosts (default 1)
	--trace                         Trace SOAP
	--vm, --virtual-machines (num)  Number of virtual machines per resource pool (default 2)

### Credit

Based on works by m451 and nimmis.
