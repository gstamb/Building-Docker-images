#!/bin/bash

echo "export REDIS_HOST=redis"  | sudo tee -a $HOME/.bashrc
echo "export REDIS_PORT=6379"  | sudo tee -a $HOME/.bashrc
echo "export PGUSER=postgres"  | sudo tee -a $HOME/.bashrc
echo "export PGHOST=postgres"  | sudo tee -a $HOME/.bashrc
echo "export PGDATABASE=postgres"  | sudo tee -a $HOME/.bashrc
echo "export PGPORT=5432"  | sudo tee -a $HOME/.bashrc
echo "export PGPASSWORD=postgres_password"  | sudo tee -a $HOME/.bashrc
