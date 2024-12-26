# Metrics Umbrel App Store

This repository contains the Metrics App Store for the Umbrel OS. This is a community App Store containing Apps for
providing Prometheus exporters for metrics collection.

## Apps

| App Name                                                                            | Description                                                                                                              | Port |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|------|
| [Metrics: Node Exporter](https://github.com/prometheus/node_exporter)               | Prometheus exporter for hardware and OS metrics exposed by *NIX kernels, written in Go with pluggable metric collectors. | 9100 |
| [Metrics: Bitcoin Exporter](https://github.com/jvstein/bitcoin-prometheus-exporter) | Prometheus exporter for Bitcoin Core nodes written in python and packaged for running as a container.                    | 9332 |

## How to Install

The Apps can be installed by adding this repository as a community App Store in the Umbrel Web UI. 

 - Go to the App Store tab
 - Click the `...` in the top right corner and then "Community App Stores"
 - Add https://gitlab.com/ChriPar/metrics-umbrel-store.git in the URL field and click `Add`
 - "Metrics Community App Store" should now be visible below the `Add` button, click `Open`
 - Install the desired Apps as you would normally
