FROM --platform=linux/x86_64 python:3.9
EXPOSE 9527
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD python GradioStarterApp.py
