FROM python:3.12-slim

WORKDIR /app

COPY . .

RUN pip3.12 install dash plotly pandas

EXPOSE 8050

CMD ["python3.12", "dash_plotting_demo.py"]
