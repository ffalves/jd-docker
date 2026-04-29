FROM python:3.14-slim
RUN pip install uv
COPY . /src
WORKDIR /src
RUN uv sync --locked
EXPOSE 8501
ENTRYPOINT ["uv", "run", "streamlit", "run", "app/app.py", "--server.port=8501", "--server.address=0.0.0.0"]
