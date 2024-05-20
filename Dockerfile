
FROM python:3.9
WORKDIR /app
COPY requirements.txt ./

RUN python -m venv venv
RUN ./venv/bin/pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PATH="/app/venv/bin:$PATH"
CMD ["python", "app.py"]

