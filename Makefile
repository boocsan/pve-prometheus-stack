up:
	docker compose up -d
	sleep 10
	docker compose exec influxdb influx setup --username monitoring --password 123456789 --token 123456789 --org monitoring --bucket monitoring --force

down:
	docker compose down

clean:
	docker compose down --rmi all -v
