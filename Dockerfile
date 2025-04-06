FROM grafana/grafana

# Copy custom CSS
COPY custom.css /usr/share/grafana/public/css/custom.css

# Inject CSS into HTML
RUN sed -i '/<head>/a <link rel="stylesheet" type="text/css" href="public/css/custom.css">' /usr/share/grafana/public/views/index.html
