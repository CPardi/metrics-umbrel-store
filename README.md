# Metrics Umbrel App Store

[![Lints apps](https://github.com/CPardi/metrics-umbrel-store/actions/workflows/lint.yml/badge.svg)](https://github.com/CPardi/metrics-umbrel-store/actions/workflows/lint.yml)

This repository contains the Metrics App Store for the Umbrel OS. This is a community App Store containing Prometheus exporters to provide metrics.

## Apps

| App Name                                                                            | Description                                                                                                              | Port |
|-------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------|------|
| [Metrics: Node Exporter](https://github.com/prometheus/node_exporter)               | Prometheus exporter for hardware and OS metrics exposed by *NIX kernels, written in Go with pluggable metric collectors. | 9100 |
| [Metrics: Docker Exporter](https://docs.docker.com/engine/daemon/prometheus/)       | Prometheus exporter for docker metrics exposed by the daemon                                                             | 9101 |
| [Metrics: Bitcoin Exporter](https://github.com/jvstein/bitcoin-prometheus-exporter) | Prometheus exporter for Bitcoin Core nodes written in python and packaged for running as a container.                    | 9102 |

## How to Install

The Apps can be installed by adding this repository as a community App Store in the Umbrel Web UI. 

 - Go to the App Store tab
 - Click the `...` in the top right corner and then "Community App Stores"
 - Add https://github.com/CPardi/metrics-umbrel-store.git in the URL field and click `Add`
 - "Metrics Community App Store" should now be visible below the `Add` button, click `Open`
 - Install the desired Apps as you would normally
