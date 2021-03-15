# PromExUmbrellaExample

Example umbrella application for [prom_ex](https://github.com/akoutmos/prom_ex).

## Setup

To get this working you need [docker](https://www.docker.com/) installed. Then:

```bash
docker-compose up -d --build
```

...to build and launch the app, along with postgres, prometheus and grafana.
Once everything is running, you have to log into Grafana for the first time, and
create an API key with the `admin` role.

Add the API key where it says `<YOUR_API_KEY_HERE>` in `config/config.exs`.

Then re-build and re-launch the app:

```bash
docker-compose up -d --build
```

Now you will have grafana dashboards.

## URLs

-   Phoenix App One: <http://localhost:4000>
-   Phoenix App Two: <http://localhost:4001>
-   Grafana: <http://localhost:3000>
-   Prometheus: <http://localhost:9090>
