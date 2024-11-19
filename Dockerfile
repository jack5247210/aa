# 使用python映像
FROM python:3.10-slim


# 設置工作目錄
WORKDIR /app


# 複製當前目錄下的所有文件到容器的工作目錄
COPY . /app


# 安裝依賴
# RUN pip install -r requirements.txt
# RUN pip install --upgrade typing-extensions
# RUN pip install pydantic==1.8

# 複製 requirements.txt 並安裝依賴
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

# 定義容器啟動時執行的指令
CMD ["python", "app.py"]
