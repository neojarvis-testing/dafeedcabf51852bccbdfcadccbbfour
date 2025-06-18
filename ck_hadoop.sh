#!/bin/bash
echo "Starting Hadoop daemons..."
hdfs --daemon stop namenode
hdfs --daemon stop datanode
hdfs --daemon stop secondarynamenode
yarn --daemon stop resourcemanager
yarn --daemon stop nodemanager
echo "Hadoop started!"
 
echo "🔍 Checking Hadoop..."
 
# CLI Check
echo "[✔] Listing HDFS root directory:"
hdfs dfs -ls / || echo "❌ HDFS not responding"