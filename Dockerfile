FROM python:3.10-slim-bookworm

WORKDIR /Jisshu-filter-bot

RUN apt-get update && \
    apt-get install -y --no-install-recommends git bash && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x /start.sh

CMD ["/bin/bash", "/start.sh"]
