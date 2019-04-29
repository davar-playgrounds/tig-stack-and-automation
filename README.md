`telegraf` `influxdb` `grafana` `azure` `aws` `cloud`

# Telegraf, InfluxDB & Grafana

### Overview
  * Telegraf
    * the plugin-driven server agent for collecting & reporting metrics.
    * You can refer the details on the [Telegraf Github](https://github.com/influxdata/telegraf)

  * InfluxDB
    * the time series database storing the data its receiving from Telegraf agents.

  * Grafana
    * the visualization tool being used to visualize the data stored in the InfluxDB time series database.


### Installation
  * Download the Telegraf & Influxdb rpm packages [here](https://portal.influxdata.com/downloads/).
  * Download the Grafana rpm packages [here](https://grafana.com/grafana/download).


### Config
  * telegraf configuration
    /etc/telegraf/telegraf.conf

    ```
      # Config for influxdb output plugin
      [[outputs.influxdb]]
      urls = ["http://<the IP of your InfluxDB server>:8086"]
      database = "telegraf"
      retention_policy = ""
      write_consistency = "any"
      timeout = "5s"
    ```
  * influxDB configuration
  

### Commands for services 
Sample commands on CentOS
  * status
    ```
      sudo systemctl status influxdb
      sudo systemctl status telegraf
      sudo systemctl status grafana-server
    ```

  * run
    ```
      sudo systemctl daemon-reload
      sudo systemctl enable influxdb
      sudo systemctl start influxdb
      sudo systemctl enable telegraf
      sudo systemctl start telegraf
      sudo systemctl enable grafana-server
      sudo systemctl start grafana-server
    ```

### Access
  Grafana : http://<the_grafana_server_ip_address>:3000
  - initial login with admin/admin


### Setup Grafana Dashboard
Set up datasources

*Configuration > Data Sources*
![data sources](images/datasources.png)

* Data Source : InfluxDB  
[How to use InfluxDB in Grafana](https://grafana.com/docs/features/datasources/influxdb/)
![InfluxDB](images/influxdb.png)

Set up datasources for Azure cloud
* Data Source : Azure Monitor  
[How to use Azure monitor in Grafana](https://grafana.com/docs/features/datasources/azuremonitor/)
![Azure Monitor](images/AzureMonitorConfig.png)

* Scheduled Event  
  [scheduled event for Linux VMs](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/scheduled-events)  
  [Python script](scripts/scheduled_event_for_linux.py)

  [scheduled event for Wiond3ows VMs](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/scheduled-events)  
  [PowerShell sample](scripts/scheduled_event_for_windows.ps)

Set up datasources for AWS (#TODO)

Set up datasources for GCP (#TODO)


Create Dashboard
* Import template id
  [*linux host dashboard for grafana*](https://grafana.com/dashboards/2846)
  ![Linux System](images/linuxgrafana.png)

* Create your own

